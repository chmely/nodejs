const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('Container demo running on ' + process.env.LGC_ENV);
});

const port = process.env.PORT;
app.listen(port, () => {
    console.log('Listening on port ' + port);
});