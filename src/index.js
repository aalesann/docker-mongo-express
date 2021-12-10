const  express = require('express');
require('./database');

const app = express();

app.use(require('./index.routes'));

app.listen( 3000, () => console.log('Server on port 3000'));