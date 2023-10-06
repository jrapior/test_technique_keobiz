const express = require('express')
const router = express.Router()

const { 
    getBalanceSheetsByClientId,
    createBalanceSheet,
    updateBalanceSheet,
    deleteBalanceSheet,
} = require('../controllers/balancesheets.controller')

router.get('/', getBalanceSheetsByClientId)
router.post('/', createBalanceSheet) 
router.put('/', updateBalanceSheet) 
router.delete('/', deleteBalanceSheet)

module.exports = router
