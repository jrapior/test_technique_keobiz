const ClientModel = require('../models/client.model.js')

const getClient = ( async (req, res) => {
    const client = await ClientModel.findByPk(req.params.id)

    if (!client) {
        res.status(404).json()
    }
    
    res.json(client)
})

const createClient = ( async (req, res) => {
    const { firstName, lastName } = req.body;

    if (!firstName || !lastName) {
        return res.status(400).json()
    }

    try {
        const newClient = ClientModel.build({
            'first_name': firstName,
            'last_name': lastName
        })
        await newClient.save()
        res.status(201).json(newClient);
    } catch (error) {
        res.json(error)
    }
})

const updateClient = ( async (req, res) => {
    const { firstName, lastName } = req.body;

    const client = await ClientModel.findByPk(req.params.id)

    if (!client) {
        res.status(404).json()
    }

    try {
        client.set ({
            first_name: firstName ? firstName : client.first_name,
            last_name: lastName ? lastName : client.last_name,
        })

        const updatedClient = await client.save()
        res.status(200).json(updatedClient);
    }
    catch(error){
        res.json(error)
    }
})

const deleteClient = ( async (req, res) => {
    try {
        const client = await ClientModel.findByPk(req.params.id)

        if (!client) {
            return res.status(404).json()
        }

        await client.destroy()
        res.status(200).json();

    } catch (error) {
        res.json(error)
    }
})

module.exports = {
    getClient,
    createClient,
    updateClient,
    deleteClient,
}
