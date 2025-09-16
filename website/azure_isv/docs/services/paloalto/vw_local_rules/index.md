--- 
title: vw_local_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_local_rules
  - paloalto
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_local_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_local_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.vw_local_rules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.etag') as "etag",
JSON_EXTRACT(properties, '$.ruleName') as "rule_name",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.ruleState') as "rule_state",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.negateSource') as "negate_source",
JSON_EXTRACT(properties, '$.destination') as "destination",
JSON_EXTRACT(properties, '$.negateDestination') as "negate_destination",
JSON_EXTRACT(properties, '$.applications') as "applications",
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.protocolPortList') as "protocol_port_list",
JSON_EXTRACT(properties, '$.inboundInspectionCertificate') as "inbound_inspection_certificate",
JSON_EXTRACT(properties, '$.auditComment') as "audit_comment",
JSON_EXTRACT(properties, '$.actionType') as "action_type",
JSON_EXTRACT(properties, '$.enableLogging') as "enable_logging",
JSON_EXTRACT(properties, '$.decryptionRuleType') as "decryption_rule_type",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
localRulestackName,
priority
FROM azure_isv.paloalto.local_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND localRulestackName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.etag') as "etag",
json_extract_path_text(properties, '$.ruleName') as "rule_name",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.ruleState') as "rule_state",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.negateSource') as "negate_source",
json_extract_path_text(properties, '$.destination') as "destination",
json_extract_path_text(properties, '$.negateDestination') as "negate_destination",
json_extract_path_text(properties, '$.applications') as "applications",
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.protocolPortList') as "protocol_port_list",
json_extract_path_text(properties, '$.inboundInspectionCertificate') as "inbound_inspection_certificate",
json_extract_path_text(properties, '$.auditComment') as "audit_comment",
json_extract_path_text(properties, '$.actionType') as "action_type",
json_extract_path_text(properties, '$.enableLogging') as "enable_logging",
json_extract_path_text(properties, '$.decryptionRuleType') as "decryption_rule_type",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
localRulestackName,
priority
FROM azure_isv.paloalto.local_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND localRulestackName = 'replace-me';
```

</TabItem>
</Tabs>
