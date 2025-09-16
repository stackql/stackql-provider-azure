--- 
title: vw_authorization_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_authorization_servers
  - api_management
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_authorization_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_authorization_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_authorization_servers" /></td></tr>
</tbody></table>

## Fields

See the SQL Definition (view DDL) for fields returned by this view.

## SQL Definition

<Tabs
defaultValue="Sqlite3"
values={[
{ label: 'Sqlite3', value: 'Sqlite3' },
{ label: 'Postgres', value: 'Postgres' }
]}
>
<TabItem value="Sqlite3">

```sql
SELECT
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.useInTestConsole') as "use_in_test_console",
JSON_EXTRACT(properties, '$.useInApiDocumentation') as "use_in_api_documentation",
JSON_EXTRACT(properties, '$.clientRegistrationEndpoint') as "client_registration_endpoint",
JSON_EXTRACT(properties, '$.authorizationEndpoint') as "authorization_endpoint",
JSON_EXTRACT(properties, '$.grantTypes') as "grant_types",
JSON_EXTRACT(properties, '$.clientId') as "client_id",
JSON_EXTRACT(properties, '$.clientSecret') as "client_secret",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.authorizationMethods') as "authorization_methods",
JSON_EXTRACT(properties, '$.clientAuthenticationMethod') as "client_authentication_method",
JSON_EXTRACT(properties, '$.tokenBodyParameters') as "token_body_parameters",
JSON_EXTRACT(properties, '$.tokenEndpoint') as "token_endpoint",
JSON_EXTRACT(properties, '$.supportState') as "support_state",
JSON_EXTRACT(properties, '$.defaultScope') as "default_scope",
JSON_EXTRACT(properties, '$.bearerTokenSendingMethods') as "bearer_token_sending_methods",
JSON_EXTRACT(properties, '$.resourceOwnerUsername') as "resource_owner_username",
JSON_EXTRACT(properties, '$.resourceOwnerPassword') as "resource_owner_password",
subscriptionId,
resourceGroupName,
serviceName,
authsid
FROM azure.api_management.authorization_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.useInTestConsole') as "use_in_test_console",
json_extract_path_text(properties, '$.useInApiDocumentation') as "use_in_api_documentation",
json_extract_path_text(properties, '$.clientRegistrationEndpoint') as "client_registration_endpoint",
json_extract_path_text(properties, '$.authorizationEndpoint') as "authorization_endpoint",
json_extract_path_text(properties, '$.grantTypes') as "grant_types",
json_extract_path_text(properties, '$.clientId') as "client_id",
json_extract_path_text(properties, '$.clientSecret') as "client_secret",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.authorizationMethods') as "authorization_methods",
json_extract_path_text(properties, '$.clientAuthenticationMethod') as "client_authentication_method",
json_extract_path_text(properties, '$.tokenBodyParameters') as "token_body_parameters",
json_extract_path_text(properties, '$.tokenEndpoint') as "token_endpoint",
json_extract_path_text(properties, '$.supportState') as "support_state",
json_extract_path_text(properties, '$.defaultScope') as "default_scope",
json_extract_path_text(properties, '$.bearerTokenSendingMethods') as "bearer_token_sending_methods",
json_extract_path_text(properties, '$.resourceOwnerUsername') as "resource_owner_username",
json_extract_path_text(properties, '$.resourceOwnerPassword') as "resource_owner_password",
subscriptionId,
resourceGroupName,
serviceName,
authsid
FROM azure.api_management.authorization_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
