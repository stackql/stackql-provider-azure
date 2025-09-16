--- 
title: vw_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_certificates
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_certificates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_certificates" /></td></tr>
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
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.thumbprint') as "thumbprint",
JSON_EXTRACT(properties, '$.issuer') as "issuer",
JSON_EXTRACT(properties, '$.issuedDate') as "issued_date",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.activateDate') as "activate_date",
JSON_EXTRACT(properties, '$.subjectName') as "subject_name",
JSON_EXTRACT(properties, '$.dnsNames') as "dns_names",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
serviceName,
certificateName
FROM azure.spring_apps.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.thumbprint') as "thumbprint",
json_extract_path_text(properties, '$.issuer') as "issuer",
json_extract_path_text(properties, '$.issuedDate') as "issued_date",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.activateDate') as "activate_date",
json_extract_path_text(properties, '$.subjectName') as "subject_name",
json_extract_path_text(properties, '$.dnsNames') as "dns_names",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
serviceName,
certificateName
FROM azure.spring_apps.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
