
# Setup Environment
- Update your .env file, see the .env.example
- Clone SuiteCRM into the crm folder and then run composer update. https://github.com/salesagility/SuiteCRM.git
- Place Your Drupal 10+ installation in the web/drupal folder and then run composer update
- Generate self signed certificates and place them in the ./certs folder or update Docker compose for LetsEncrypt configuration with Traefik.
- Download and install Mutagen, follow the instructions from https://github.com/mutagen-io/mutagen
- Run docker-compose start -d
- Run mutagen daemon and start syncing files

# Project TODOs:
- [ ] Fix issues with Traefik configuration, and resolve routing issues.
- [ ] Streamline 0-100 setup process and remove as many manual steps as possible.
- [ ] Generate and include demo SQL dumps for Drupal, CRM, Mautic and Unami to demonstrate functionality.
- [ ] Create custom Drupal module 
  - Demonstrate Tracking for Mautic/Unami and intercommunication with CRM.
  - Dashboard of Segments/statistics for traffic
    - Segment Discoverer tool