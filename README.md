# Esami

## Descrizione:
Il seguente progetto è stato scritto usando nel backend [Nest.js](https://nestjs.com) (framework basato su Node.js) con database [better-sqlite3](https://github.com/WiseLibs/better-sqlite3) mentre il frontend in [Angular](https://angular.dev). Le scelte sono ricadute su Nest.js e su Angular per via del loro essere progetti maturi e che guidano l'utente a una architettura del codice ben strutturata. Lato database, si è scelto un database della famiglia sqlite, oltre che per via della sua estrema portabilità (il database è interamente contenuto in un file) anche per le sue performance nel caso di progetti con database di piccole dimensioni. In particolare, better-sqlite3 garantisce performance aumentate rispetto a sqlite originale ed è maturo, come dimostrato dalla scelta degli sviluppatori del CMS Strapi di supportare solo better-sqlite3 (Fonte: [https://docs.strapi.io/cms/migration/v4-to-v5/breaking-changes/only-better-sqlite3-for-sqlite](https://docs.strapi.io/cms/migration/v4-to-v5/breaking-changes/only-better-sqlite3-for-sqlite))

## Installazione:
### Prerequisiti:
L'unico prerequisito richiesto è l'installazione di
1) Docker ([Istruzioni](https://docs.docker.com/engine/install/))
2) Docker compose ([Istruzioni](https://docs.docker.com/compose/install/))

### Installazione del progetto
1) Aprire il terminale/prompt dei comandi
1) `git clone git@github.com:rondey/esami.git`
1) `cd esami`
1) In base al Sistema Operativo in uso:
   - Se si è su ambiente Linux (suppongo anche Mac OS):
   `sh install.sh`
   - **Altrimenti** si possono lanciare manualmente i singoli comandi:
     1) `git submodule init`
     1) `git submodule update`
     1) `docker compose run backend sh -c "yarn install && yarn migration:run && yarn seed:run"`
     1) `docker compose run frontend npm install`
    
## Lanciare il progetto in locale
- `docker compose up`

## Disinstallazione del progetto:
1) `docker compose down`
1) Eliminare la cartella del progetto
