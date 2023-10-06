const BalanceSheetModel = require('../models/balancesheet.model.js');

const getBalanceSheetsByClientId = ( async (req, res) => {
    const { clientId } = req.body;

    if (!clientId) {
        return res.status(400).json()
    }

    try {
        const balancesheets = await BalanceSheetModel.findAll({
            where: {
                client_id: clientId
            }
        });
        res.json(balancesheets)
    }
    catch (error) {
        res.json(error)
    }
})

const createBalanceSheet = ( async (req, res) => {
    const { year, result, clientId } = req.body;

    if (!year || !result || !clientId) {
        return res.status(400).json()
    }

    try {
        const newBalanceSheet = BalanceSheetModel.build({
            'year': year,
            'result': result,
            'client_id': clientId,
        })

        await newBalanceSheet.save()
        res.status(201).json(newBalanceSheet);
    }
    catch (error) {
        res.json(error)
    }

})

const updateBalanceSheet = ( async (req, res) => {
    const { year, result, clientId } = req.body;

    if (!year || !result || !clientId) {
        return res.status(400).json()
    }

    try {
        const balancesheet = await BalanceSheetModel.findOne({
            where: {
                client_id: clientId,
                year: year
            }
        });

        balancesheet.set ({
            result: result
        })
        await balancesheet.save()
        res.status(200).json(balancesheet);
    
    } catch (error) {
        res.json(error)
    }
})

const deleteBalanceSheet = ( async (req, res) => {
    const { clientId, year } = req.body;

    if (!clientId || !year) {
        return res.status(400).json()
    }

    try {
        const balancesheet = await BalanceSheetModel.findOne({
            where: {
                client_id: clientId,
                year: year
            }
        });

        if (!balancesheet) {
            return res.status(404).json()
        }

        await balancesheet.destroy()
        res.status(200).json();
    } catch (error) {
        res.json(error)
    }
})

module.exports = {
    getBalanceSheetsByClientId,
    createBalanceSheet,
    updateBalanceSheet,
    deleteBalanceSheet,
}
