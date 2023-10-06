const { sequelize } = require('../config/db');
const { DataTypes } = require('sequelize');

const ClientModel = sequelize.define("clients", {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
    },
    first_name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    last_name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
});

module.exports = ClientModel;