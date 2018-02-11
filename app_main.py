#!/usr/bin/env python

import subprocess
import sys
import json


class AppInternalServerErrorException(Exception):
    pass


def call_node_lambda(command=None, event=None, timeout=None):
    event_ = event
    if not isinstance(event_, str):
        event_ = json.dumps(event_, separators=(',', ':'))
    with subprocess.Popen(command, stdin=subprocess.PIPE, stdout=subprocess.PIPE) as proc:
        proc.stdin.write(event_.encode('UTF-8'))
        proc.stdin.flush()
        proc.stdin.close()
        try:
            proc_status = -1
            (output, err) = proc.communicate(timeout=timeout)
            proc_status = proc.wait(timeout=0)
        except TimeoutExpired:
            proc.kill()
            (output, err) = proc.communicate()
        if proc_status != 0:
            raise AppInternalServerErrorException()
        elif err is not None:
            raise AppInternalServerErrorException()
        return output



if __name__ == '__main__':
    from flask import Flask, abort
    app = Flask(__name__)

    @app.errorhandler(AppInternalServerErrorException)
    def internal_error_handler(e):
        return 'Internal Server Error', 500

    @app.route('/')
    def run_report():
        with open('./src/examples/barcode.data.json') as f:
            data = json.loads(f.read())
            return call_node_lambda(command=["node", "dist/app.js"], event=data)

    app.run(debug=True)
