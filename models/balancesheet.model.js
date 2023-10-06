const { sequelize } = require('../config/db');
const { DataTypes } = require('sequelize');

const BalanceSheetModel = sequelize.define("balance_sheets", {
    year: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
    },
    client_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        references: 'clients',
        referencesKey: 'id'
    },
    result: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
    },
});

module.exports = BalanceSheetModel;