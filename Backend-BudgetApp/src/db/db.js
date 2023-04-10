import { Sequelize } from "sequelize";
import { config } from "dotenv";

config();

export const sequelize = new Sequelize(process.env.DB_NAME || 'postgres', process.env.DB_USER || 'postgres', process.env.DB_PASSWORD || 'admin', {
    host: '10.1.0.157',
    // host: 'localhost',
    dialect: 'postgres'
})