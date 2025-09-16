--- 
title: vw_application_gateways_available_ssl_options
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_application_gateways_available_ssl_options
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_application_gateways_available_ssl_options</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_application_gateways_available_ssl_options</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_application_gateways_available_ssl_options" /></td></tr>
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
id as id,
name as name,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.predefinedPolicies') as "predefined_policies",
JSON_EXTRACT(properties, '$.defaultPolicy') as "default_policy",
JSON_EXTRACT(properties, '$.availableCipherSuites') as "available_cipher_suites",
JSON_EXTRACT(properties, '$.availableProtocols') as "available_protocols",
subscriptionId
FROM azure.network.application_gateways_available_ssl_options
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.predefinedPolicies') as "predefined_policies",
json_extract_path_text(properties, '$.defaultPolicy') as "default_policy",
json_extract_path_text(properties, '$.availableCipherSuites') as "available_cipher_suites",
json_extract_path_text(properties, '$.availableProtocols') as "available_protocols",
subscriptionId
FROM azure.network.application_gateways_available_ssl_options
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
