--- 
title: vw_identity_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_identity_providers
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

Creates, updates, deletes, gets or lists a <code>vw_identity_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_identity_providers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_identity_providers" /></td></tr>
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
JSON_EXTRACT(properties, '$.clientId') as "client_id",
JSON_EXTRACT(properties, '$.clientSecret') as "client_secret",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.signinTenant') as "signin_tenant",
JSON_EXTRACT(properties, '$.allowedTenants') as "allowed_tenants",
JSON_EXTRACT(properties, '$.authority') as "authority",
JSON_EXTRACT(properties, '$.signupPolicyName') as "signup_policy_name",
JSON_EXTRACT(properties, '$.signinPolicyName') as "signin_policy_name",
JSON_EXTRACT(properties, '$.profileEditingPolicyName') as "profile_editing_policy_name",
JSON_EXTRACT(properties, '$.passwordResetPolicyName') as "password_reset_policy_name",
JSON_EXTRACT(properties, '$.clientLibrary') as "client_library",
subscriptionId,
resourceGroupName,
serviceName,
identityProviderName
FROM azure.api_management.identity_providers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.clientId') as "client_id",
json_extract_path_text(properties, '$.clientSecret') as "client_secret",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.signinTenant') as "signin_tenant",
json_extract_path_text(properties, '$.allowedTenants') as "allowed_tenants",
json_extract_path_text(properties, '$.authority') as "authority",
json_extract_path_text(properties, '$.signupPolicyName') as "signup_policy_name",
json_extract_path_text(properties, '$.signinPolicyName') as "signin_policy_name",
json_extract_path_text(properties, '$.profileEditingPolicyName') as "profile_editing_policy_name",
json_extract_path_text(properties, '$.passwordResetPolicyName') as "password_reset_policy_name",
json_extract_path_text(properties, '$.clientLibrary') as "client_library",
subscriptionId,
resourceGroupName,
serviceName,
identityProviderName
FROM azure.api_management.identity_providers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
