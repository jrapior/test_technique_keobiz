require('dotenv').config();

const bodyParser = require('body-parser');
const express = require('express');

const app = express();

app.use(express.json());
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}));

// Application routes
const clientRoutes = require('./routes/client.routes');
app.use('/api/client', clientRoutes);
const balancesheetRoutes = require('./routes/balancesheet.routes');
app.use('/api/balancesheet', balancesheetRoutes)

app.get('/',(request, response) => {
    response.status(200).json({ message:"Nothing to see here ;)" })
})
app.use((request, response) => {
    response.status(404);
    response.json({ message:"Resource not found" });
})
app.use((request, response) => {
    response.status(500);
    response.json({ message:"Oops... Something went wrong" });
})

app.listen(process.env.APP_PORT, async () => {
    console.log(`Server is running at http://localhost:${process.env.APP_PORT}`);
})