const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('Good morning');
});

app.listen(7000, () => {
    console.log('Listening on port 7000 inside the container');
});
