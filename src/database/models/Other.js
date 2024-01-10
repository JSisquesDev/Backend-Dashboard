const { Sequelize } = require('sequelize');

module.exports = sequelize => {
  const Other = sequelize.define(
    'Other',
    {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      name: {
        type: Sequelize.STRING,
      },
      location: {
        type: Sequelize.STRING,
      },
      start_year: {
        type: Sequelize.DATE,
      },
      end_year: {
        type: Sequelize.DATE,
      },
      icon: {
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
      id_personal_data: {
        type: Sequelize.INTEGER,
      },
    },
    {
      // options
      sequelize,
      modelName: 'Other',
      tableName: 'OTHER',
      createdAt: 'created_at',
      updatedAt: 'updated_at',
      underscore: true,
    },
  );

  Other.sync();

  return Other;
};
