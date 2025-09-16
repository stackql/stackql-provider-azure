--- 
title: vw_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_certificates
  - batch
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.batch.vw_certificates" /></td></tr>
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
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.provisioningStateTransitionTime') as "provisioning_state_transition_time",
JSON_EXTRACT(properties, '$.previousProvisioningState') as "previous_provisioning_state",
JSON_EXTRACT(properties, '$.previousProvisioningStateTransitionTime') as "previous_provisioning_state_transition_time",
JSON_EXTRACT(properties, '$.publicData') as "public_data",
JSON_EXTRACT(properties, '$.deleteCertificateError') as "delete_certificate_error",
JSON_EXTRACT(properties, '$.thumbprintAlgorithm') as "thumbprint_algorithm",
JSON_EXTRACT(properties, '$.thumbprint') as "thumbprint",
JSON_EXTRACT(properties, '$.format') as "format",
subscriptionId,
resourceGroupName,
accountName,
certificateName
FROM azure.batch.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.provisioningStateTransitionTime') as "provisioning_state_transition_time",
json_extract_path_text(properties, '$.previousProvisioningState') as "previous_provisioning_state",
json_extract_path_text(properties, '$.previousProvisioningStateTransitionTime') as "previous_provisioning_state_transition_time",
json_extract_path_text(properties, '$.publicData') as "public_data",
json_extract_path_text(properties, '$.deleteCertificateError') as "delete_certificate_error",
json_extract_path_text(properties, '$.thumbprintAlgorithm') as "thumbprint_algorithm",
json_extract_path_text(properties, '$.thumbprint') as "thumbprint",
json_extract_path_text(properties, '$.format') as "format",
subscriptionId,
resourceGroupName,
accountName,
certificateName
FROM azure.batch.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
