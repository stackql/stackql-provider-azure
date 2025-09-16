--- 
title: vw_managed_instance_dtcs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_instance_dtcs
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_managed_instance_dtcs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_instance_dtcs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_managed_instance_dtcs" /></td></tr>
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
JSON_EXTRACT(properties, '$.dtcEnabled') as "dtc_enabled",
JSON_EXTRACT(properties, '$.securitySettings') as "security_settings",
JSON_EXTRACT(properties, '$.externalDnsSuffixSearchList') as "external_dns_suffix_search_list",
JSON_EXTRACT(properties, '$.dtcHostNameDnsSuffix') as "dtc_host_name_dns_suffix",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
managedInstanceName,
dtcName
FROM azure.sql.managed_instance_dtcs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND dtcName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.dtcEnabled') as "dtc_enabled",
json_extract_path_text(properties, '$.securitySettings') as "security_settings",
json_extract_path_text(properties, '$.externalDnsSuffixSearchList') as "external_dns_suffix_search_list",
json_extract_path_text(properties, '$.dtcHostNameDnsSuffix') as "dtc_host_name_dns_suffix",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
managedInstanceName,
dtcName
FROM azure.sql.managed_instance_dtcs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND dtcName = 'replace-me';
```

</TabItem>
</Tabs>
