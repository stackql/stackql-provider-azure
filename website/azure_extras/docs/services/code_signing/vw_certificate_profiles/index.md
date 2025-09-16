--- 
title: vw_certificate_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_certificate_profiles
  - code_signing
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_certificate_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_certificate_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.code_signing.vw_certificate_profiles" /></td></tr>
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
JSON_EXTRACT(properties, '$.profileType') as "profile_type",
JSON_EXTRACT(properties, '$.commonName') as "common_name",
JSON_EXTRACT(properties, '$.organization') as "organization",
JSON_EXTRACT(properties, '$.organizationUnit') as "organization_unit",
JSON_EXTRACT(properties, '$.streetAddress') as "street_address",
JSON_EXTRACT(properties, '$.includeStreetAddress') as "include_street_address",
JSON_EXTRACT(properties, '$.city') as "city",
JSON_EXTRACT(properties, '$.includeCity') as "include_city",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.includeState') as "include_state",
JSON_EXTRACT(properties, '$.country') as "country",
JSON_EXTRACT(properties, '$.includeCountry') as "include_country",
JSON_EXTRACT(properties, '$.postalCode') as "postal_code",
JSON_EXTRACT(properties, '$.includePostalCode') as "include_postal_code",
JSON_EXTRACT(properties, '$.enhancedKeyUsage') as "enhanced_key_usage",
JSON_EXTRACT(properties, '$.identityValidationId') as "identity_validation_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.certificates') as "certificates",
subscriptionId,
resourceGroupName,
accountName,
profileName
FROM azure_extras.code_signing.certificate_profiles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.profileType') as "profile_type",
json_extract_path_text(properties, '$.commonName') as "common_name",
json_extract_path_text(properties, '$.organization') as "organization",
json_extract_path_text(properties, '$.organizationUnit') as "organization_unit",
json_extract_path_text(properties, '$.streetAddress') as "street_address",
json_extract_path_text(properties, '$.includeStreetAddress') as "include_street_address",
json_extract_path_text(properties, '$.city') as "city",
json_extract_path_text(properties, '$.includeCity') as "include_city",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.includeState') as "include_state",
json_extract_path_text(properties, '$.country') as "country",
json_extract_path_text(properties, '$.includeCountry') as "include_country",
json_extract_path_text(properties, '$.postalCode') as "postal_code",
json_extract_path_text(properties, '$.includePostalCode') as "include_postal_code",
json_extract_path_text(properties, '$.enhancedKeyUsage') as "enhanced_key_usage",
json_extract_path_text(properties, '$.identityValidationId') as "identity_validation_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.certificates') as "certificates",
subscriptionId,
resourceGroupName,
accountName,
profileName
FROM azure_extras.code_signing.certificate_profiles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
