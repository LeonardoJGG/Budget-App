import { config } from 'dotenv'
import app from './api/api.js';
import { sequelize } from './db/db.js';
import { Account } from './models/Account.js';
import { Operation } from './models/Operation.js';
import { Transfer } from './models/Transfer.js';
import { User } from './models/User.js';

async function main() {

    config();
    const PORT = process.env.PORT || 3000;

    try {
        await sequelize.authenticate();
        console.log('Connection has been established successfully.');

        // await sequelize.sync()

        app.listen(PORT);
        console.log(`Server is listening on port ${PORT}`);
    } catch (error) {
        console.error('Unable to connect to the database:', error);
    }

}

main();