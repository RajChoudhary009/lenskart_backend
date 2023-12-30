const { Sequelize, DataTypes } = require('sequelize');
const { database } = require("../connection/database"); // Import your Sequelize instance


const products = database.define('products', {
    product_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
    },

    product_categories: {
        type: DataTypes.STRING,
        allowNull: false,
    },

    brand_name: {
        type: DataTypes.STRING,
        allowNull: false,
    },

    brand_id: {
        type: DataTypes.INTEGER, // Update data type to match the primary key of the 'brand' table
        allowNull: false,
    },

    place:{
        type:DataTypes.STRING,
        allowNull: false,
    },

    product_title: {
        type: DataTypes.STRING,
        allowNull: false
    },
    product_description: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    product_price: {
        type: DataTypes.INTEGER,
        allowNull: false

    },
    product_thumnail_img: {
        type: DataTypes.STRING,
        allowNull: false

    },
    product_ad: {
        type: DataTypes.BOOLEAN,
        allowNull: false
    },
    count_in_stock:{
        type:DataTypes.INTEGER,
        allowNull:false,
        defaultValue:0,
        
    },
    offer: {
        type: DataTypes.STRING,
        allowNull: true
    },
    rating:{
        type: DataTypes.FLOAT,
        allowNull: true

    },
    discount:{
        type: DataTypes.FLOAT,
        allowNull: true

    },
    ideal_for: {
        type: DataTypes.JSON, // Replace STRING with the appropriate data type for your array elements
        allowNull: true
    },
    product_work_for: {
        type: DataTypes.JSON, // Replace STRING with the appropriate data type for your array elements
        allowNull: true
    },
    highlights:{
        type: DataTypes.STRING,
        allowNull: true

    },
    product_expiry_date:{
        type: DataTypes.STRING,
        allowNull: false

    },
    createdAt: {
        type: DataTypes.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'), // Set the default value to the current timestamp
      },
      updatedAt: {
        type: DataTypes.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
        onUpdate: Sequelize.literal('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'),
      },
      
},
{
    timestamps: false,
    freezeTableName: true,

}
)

module.exports = products;

// Products.belongsTo(Brand,{foreignKey:'brand_id'})
