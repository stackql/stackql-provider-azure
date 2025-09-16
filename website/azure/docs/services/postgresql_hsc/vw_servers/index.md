--- 
title: vw_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_servers
  - postgresql_hsc
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

Creates, updates, deletes, gets or lists a <code>vw_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql_hsc.vw_servers" /></td></tr>
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
JSON_EXTRACT(properties, '$.serverEdition') as "server_edition",
JSON_EXTRACT(properties, '$.storageQuotaInMb') as "storage_quota_in_mb",
JSON_EXTRACT(properties, '$.vCores') as "v_cores",
JSON_EXTRACT(properties, '$.enableHa') as "enable_ha",
JSON_EXTRACT(properties, '$.enablePublicIpAccess') as "enable_public_ip_access",
JSON_EXTRACT(properties, '$.isReadOnly') as "is_read_only",
JSON_EXTRACT(properties, '$.administratorLogin') as "administrator_login",
JSON_EXTRACT(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.haState') as "ha_state",
JSON_EXTRACT(properties, '$.availabilityZone') as "availability_zone",
JSON_EXTRACT(properties, '$.postgresqlVersion') as "postgresql_version",
JSON_EXTRACT(properties, '$.citusVersion') as "citus_version",
subscriptionId,
resourceGroupName,
clusterName,
serverName
FROM azure.postgresql_hsc.servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.serverEdition') as "server_edition",
json_extract_path_text(properties, '$.storageQuotaInMb') as "storage_quota_in_mb",
json_extract_path_text(properties, '$.vCores') as "v_cores",
json_extract_path_text(properties, '$.enableHa') as "enable_ha",
json_extract_path_text(properties, '$.enablePublicIpAccess') as "enable_public_ip_access",
json_extract_path_text(properties, '$.isReadOnly') as "is_read_only",
json_extract_path_text(properties, '$.administratorLogin') as "administrator_login",
json_extract_path_text(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.haState') as "ha_state",
json_extract_path_text(properties, '$.availabilityZone') as "availability_zone",
json_extract_path_text(properties, '$.postgresqlVersion') as "postgresql_version",
json_extract_path_text(properties, '$.citusVersion') as "citus_version",
subscriptionId,
resourceGroupName,
clusterName,
serverName
FROM azure.postgresql_hsc.servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
