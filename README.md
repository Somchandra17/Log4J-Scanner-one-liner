# Command Injection Scanner

## Overview

The Command Injection Scanner is a Bash script that scans a specified domain for vulnerabilities related to Command Injection. It uses various payloads stored in a file to test for potential vulnerabilities in the target domain.

## Features

- Scans a specified domain for Command Injection vulnerabilities
- Utilizes payloads from a user-provided file to test for vulnerabilities
- Outputs results for each payload tested

## Requirements

- Bash shell environment
- cURL command-line tool
- subfinder tool (for domain enumeration)
- httprobe tool (for probing HTTP/HTTPS domains)

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/your_username/command-injection-scanner.git
    ```

2. Navigate to the project directory:
    ```bash
    cd command-injection-scanner
    ```

3. Place your payloads in a file named `bypass_payload.txt` in the project directory. Each payload should be on a separate line.

4. Make the scanner.sh script executable:
    ```bash
    chmod +x scanner.sh
    ```

5. Run the scanner.sh script:
    ```bash
    ./scanner.sh
    ```

6. Follow the prompts to enter the domain you want to scan.
