const express = require('express');

const app = express();

app.get('/', ('reg', res) => {
    res.send('Hi there');
});

app.listen(8080, () => {
    console.log('Listening on port 8080');
});
