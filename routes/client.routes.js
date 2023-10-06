const express = require('express')
const router = express.Router()

const { 
    getClient,
    createClient,
    updateClient,
    deleteClient,
} = require('../controllers/clients.controller')

router.get('/:id', getClient)
router.post('/', createClient) 
router.patch('/:id', updateClient) 
router.delete('/:id', deleteClient)

module.exports = router
