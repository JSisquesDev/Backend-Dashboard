const { Sequelize } = require('sequelize');

module.exports = sequelize => {
  const PersonalData = sequelize.define(
    'PERSONAL_DATA',
    {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      name: {
        type: Sequelize.INTEGER,
      },
      job: {
        type: Sequelize.STRING,
      },
      email: {
        type: Sequelize.STRING,
      },
      phone: {
        type: Sequelize.STRING,
      },
      created_at: {
        type: Sequelize.DATE,
      },
      updated_at: {
        type: Sequelize.DATE,
      },
      active: {
        type: Sequelize.BOOLEAN,
      },
      language: {
        type: Sequelize.STRING,
      },
    },
    {
      // options
      sequelize,
      modelName: 'PersonalData',
      tableName: 'PERSONAL_DATA',
      createdAt: 'created_at',
      updatedAt: 'updated_at',
      underscore: true,
    },
  );

  PersonalData.sync();

  return PersonalData;
};
