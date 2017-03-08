#!/bin/bash

psql -d postgres -a -f /opt/elucidate-server/elucidate-db-scripts/group_roles/annotations_role.sql \
        && psql -d postgres -a -f /opt/elucidate-server/elucidate-db-scripts/login_roles/annotations_user.sql \
        && psql -d postgres -a -f /opt/elucidate-server/elucidate-db-scripts/annotations.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/sequences/annotation_collection_id_seq.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/sequences/annotation_id_seq.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/tables/annotation_collection.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/tables/annotation.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/views/annotation_collection_get.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/views/annotation_get.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/functions/annotation_collection_create.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/functions/annotation_create.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/functions/annotation_delete.sql \
        && psql -d annotations -a -f /opt/elucidate-server/elucidate-db-scripts/functions/annotation_update.sql

