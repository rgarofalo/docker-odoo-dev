### Project Template README: Debug Odoo with Docker in VSCode

sorce project https://github.com/teguhteja/docker-odoo-dev.git

#### Overview
This project template facilitates Odoo development using Docker, specifically configured for VSCode IDE. It includes setup instructions and tips for effective debugging using the Odoo IDE extension.

#### Prerequisites
Before proceeding, ensure you have the following installed:
1. Docker
2. Git
3. VSCode with the following extensions:
   - Docker
   - Odoo IDE
   - Python Debugger

#### Setup Steps

1. **Clone this Project**

2. **Get Odoo Stubs**
   Clone  `odoo-stub` project:
   ```bash
   git clone -b 18.0 https://github.com/odoo-ide/odoo-stubs.git
   ```
   Utilizzando questi stub, gli IDE forniranno un migliore completamento del codice, Le selezionatrici di tipo statico forniranno rapporti migliori.

3. **Build Docker Image**
   Build the Odoo development image:
   ```bash
   docker build -t odoodev:18 .
   ```

4. **Start Docker Compose**
   Launch Odoo 18 and PostgreSQL containers:
   ```bash
   docker compose up -d
   ```

5. **Add Your Addons**
   Place your addons in the `extra-addons` folder and restart the Docker stack (`docker compose restart odoo-dev`) using docker extension vscode.


6. **Copy the Odoo source code from the container:**
   ```bash
   ./docker-cp-odoo.sh
   ```

7. **Debugging**
   - Set breakpoints in your source code within VSCode.
   - Ensure the debugger is configured to debug external code (`"justMyCode": false` in launch.json).
   - Add breakpoints in the Odoo source code. (se vuoi)
   - Run the debugger process to start debugging.

#### Troubleshooting Tips

1. **Copying misc.py in odoodev**
   If backup failures occur with Docker images, modify `misc.py` to resolve issues.

2. **Debugging Odoo Source Code**
   Modify `"justMyCode": false` in `launch.json`, 
   download the Odoo folder from the container using `docker-cp-odoo.sh`,
   uncomment this line in docker-compose.yml
   `- ./odoo:/usr/lib/python3/dist-packages/odoo` 
   restart stack or docker compose
   add breakpoints, and start the debugger process .

#### Conclusion
This README provides detailed steps to set up an Odoo development environment using Docker and VSCode, enabling efficient debugging of Odoo applications. For further details, refer to the full documentation and scripts available in the project repository.

---

For detailed scripts and further instructions, visit [docker-odoo-dev](https://github.com/teguhteja/docker-odoo-dev.git).