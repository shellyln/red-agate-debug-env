
import * as RedAgate             from 'red-agate/modules/red-agate';
import { App }                   from 'red-agate/modules/red-agate/app';
import { billngReportHandler,
         BillingStatement }      from './examples/billing';
import { default as billngData } from './examples/billing.data';
import { kanbanReportHandler }   from './examples/kanban';
import { default as kanbanData } from './examples/kanban.data';
import { fbaA4ReportHandler }    from './examples/fba-a4';
import { barcodeTestHandler }    from './examples/barcode-test';


// tslint:disable-next-line:no-eval
const requireDynamic = eval("require");

const data = kanbanData;
const handler = barcodeTestHandler;

// handler(data, {} as any, (error, result) => {
//     if (error) {
//         console.log(error);
//     } else {
//         const fs = require('fs');
//         if (!fs.existsSync('./debug')) {
//             fs.mkdirSync('./debug');
//         }
//         fs.writeFileSync('./debug/index.html', result);
//     }
// });


App
.route('/', (evt, ctx, cb) => cb(null, 'Hello, Node!'))
.route('/billing', billngReportHandler)
.route('/kanban', kanbanReportHandler)
.route('/fba-a4', fbaA4ReportHandler)
.route('/barcode-test', barcodeTestHandler)
.run({});
