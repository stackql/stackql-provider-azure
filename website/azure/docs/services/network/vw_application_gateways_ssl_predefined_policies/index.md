--- 
title: vw_application_gateways_ssl_predefined_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_application_gateways_ssl_predefined_policies
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

Creates, updates, deletes, gets or lists a <code>vw_application_gateways_ssl_predefined_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_application_gateways_ssl_predefined_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_application_gateways_ssl_predefined_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.cipherSuites') as "cipher_suites",
JSON_EXTRACT(properties, '$.minProtocolVersion') as "min_protocol_version",
subscriptionId,
predefinedPolicyName
FROM azure.network.application_gateways_ssl_predefined_policies
WHERE subscriptionId = 'replace-me' AND predefinedPolicyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
json_extract_path_text(properties, '$.cipherSuites') as "cipher_suites",
json_extract_path_text(properties, '$.minProtocolVersion') as "min_protocol_version",
subscriptionId,
predefinedPolicyName
FROM azure.network.application_gateways_ssl_predefined_policies
WHERE subscriptionId = 'replace-me' AND predefinedPolicyName = 'replace-me';
```

</TabItem>
</Tabs>
