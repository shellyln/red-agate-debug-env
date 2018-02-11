
export function app(context: any, lambda: AwsLambda) {
    process.stdin.resume();
    process.stdin.setEncoding('utf8');

    let inputData = '';

    process.stdin.on('data', (chunk) => {
        inputData += chunk;
    });

    process.stdin.on('end', () => {
        try {
            lambda(JSON.parse(inputData), context, (error, result) => {
                if (error) {
                    console.error(error);
                    process.stdout.write(String(error));
                    process.exit(-1);
                } else {
                    process.stdout.write(result);
                    process.exit(0);
                }
            });
        } catch (e) {
            console.error(e);
            process.stdout.write(String(e));
            process.exit(-1);
        }
    });
}
