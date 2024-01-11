const { Sequelize } = require('sequelize');

module.exports = sequelize => {
  const SocialMedia = sequelize.define(
    'SocialMedia',
    {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      name: {
        type: Sequelize.STRING,
      },
      url: {
        type: Sequelize.STRING,
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
      id_personal_data: {
        type: Sequelize.INTEGER,
      },
    },
    {
      // options
      sequelize,
      modelName: 'SocialMedia',
      tableName: 'SOCIAL_MEDIA',
      createdAt: 'created_at',
      updatedAt: 'updated_at',
      underscore: true,
    },
  );

  SocialMedia.sync();

  return SocialMedia;
};
