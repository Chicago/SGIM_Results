# Sustainable Green Infrastructure Monitoring ETL

The Sustainable Green Infrastructure Monitoring (SGIM) project uses sensors, provided by [Opti](https://optirtc.com), that measures water diverted into the ground. This repo contains the ETL code which uploads data from Opti's sensors to [Socrata open data portals](https://www.socrata.com). It is a generalized program from the same code that uploads SGIM data to [Chicago's open data portal](https://data.cityofchicago.org/Environment-Sustainable-Development/Sustainable-Green-Infrastructure-Monitoring-Sensor/ggws-77ih).

This ETL depends on the open source ["Open Data ETL Utility Kit"](https://github.com/Chicago/open-data-etl-utility-kit) framework. The Utility Kit uses the open source [Kettle data integration]() program to help automate uploads to a Socrata open data portal. This repository uses that Utility Kit and is further preconfigured to work with Opti's APIs.

## Installation

This ETL requires you first install and configure the ["Open Data ETL Utility Kit"](https://github.com/Chicago/open-data-etl-utility-kit). Download that repository and [follow the installation instructions](http://open-data-etl-utility-kit.readthedocs.io/en/stable/installation-configuration.html).

### ETL Installation

Place this repository in the `./open-data-etl-utility-kit/ETL/` directory. You may name the folder whatever you prefer, though you can see our [recommended naming conventions](http://open-data-etl-utility-kit.readthedocs.io/en/stable/creating-configuring-ETL.html#suggested-naming-conventions).

### Opti Credentials

Opti uses a token to authenticate users of their API. Obtain your token and place it in the `[credentials_sample.csv](credentials_sample.csv)` document and save it as `credentials.csv`. The ETL is pre-configured to read from the `credentials.csv` for authentication.

### Configuring Automation

The bash script, `ggws-77ih.sh`, will run the ETL process. Open the bash script and [see the instructions](http://open-data-etl-utility-kit.readthedocs.io/en/stable/setting-up-automation.html#configurating-setup-script-sh-e-g-abcd-1234-sh) to configure the file names to match your directory.

Use a task scheduler, such as `crontab` to set a regular time to run the ETL. [See the recommended configuration] to setup a regular updating process while also logging the outcome of each update.

#### Windows Users

Automation is currently initiated by a Bash script, such as [Cygwin](https://www.cygwin.com/) to automate the process.

## Structure

Below are the principal components of the repository and a brief description of their role.

  - `SGIM_Results_ggws-77ih.ktr` - Main file which contains the ETL. This can be opened in Kettle (Spoon) and viewed.
  - `SGIM-Admin_DataStreams_Original.txt` - Shows all of the streams available through Opti's ETL.
  - `SGIM-Admin_DataStreams_Edited.csv` - The actual streams that will be used in the ETL. The list in the repository is the [sensors currently displayed on Chicago's portal](https://data.cityofchicago.org/Environment-Sustainable-Development/Sustainable-Green-Infrastructure-Monitoring-Sensor/ggws-77ih).
  - `ggws-77ih.sh` - A bash script which runs the ETL. 
  - `credentials_sample.csv` - A sample of how credentials should be specified, however, it is not used in the ETL. Please see instructions to configure credentials.

Other files located in the repository not listed here either indirectly support the workflow or are adminstrative in nature.

## License

See the [license file](LICENSE.md).

## Contributing

Contributions such as pull requests or opening issues are welcomed. If you plan on submitting a pull request, please complete a [Contributor License Agreement](https://www.clahub.com/agreements/Chicago/SGIM_Results).