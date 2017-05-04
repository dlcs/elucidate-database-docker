#!/bin/bash

psql -d postgres -a -f /opt/elucidate/elucidate-db-scripts/group_roles/annotations_role.sql \
        && psql -d postgres -a -f /opt/elucidate/elucidate-db-scripts/login_roles/annotations_user.sql \
        && psql -d postgres -a -f /opt/elucidate/elucidate-db-scripts/annotations.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_collection.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_body.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_target.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_agent.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_agent_email.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_agent_email_sha1.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_agent_homepage.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_agent_name.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_agent_type.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/tables/annotation_selector.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_body_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_collection_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_creator_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_css_selector_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_data_position_selector_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_fragment_selector_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_svg_selector_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_target_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_text_position_selector_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_text_quote_selector_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/views/annotation_xpath_selector_get.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_body_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_body_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_collection_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_creator_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_creator_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_css_selector_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_css_selector_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_data_position_selector_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_data_position_selector_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_fragment_selector_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_fragment_selector_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_search_by_body.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_search_by_creator.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_search_by_target.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_svg_selector_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_svg_selector_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_target_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_target_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_text_position_selector_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_text_position_selector_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_text_quote_selector_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_text_quote_selector_delete.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_update.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_xpath_selector_create.sql \
        && psql -d annotations -a -f /opt/elucidate/elucidate-db-scripts/functions/annotation_xpath_selector_delete.sql

