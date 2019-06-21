'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('notes', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      tittle: {
        type: Sequelize.STRING(200)
      },
      note: {
        type: Sequelize.TEXT
      },
      time: {
        type: Sequelize.DATE,
        defaultValue :Sequelize.fn('NOW')
      },
      category_id: {
        type: Sequelize.STRING(200)
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue :Sequelize.fn('NOW')
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue :Sequelize.fn('NOW')
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('notes');
  }
};