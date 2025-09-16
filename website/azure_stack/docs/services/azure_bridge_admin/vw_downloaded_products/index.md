--- 
title: vw_downloaded_products
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_downloaded_products
  - azure_bridge_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_downloaded_products</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_downloaded_products</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_bridge_admin.vw_downloaded_products" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.vmExtensionType') as "vm_extension_type",
JSON_EXTRACT(properties, '$.links') as "links",
JSON_EXTRACT(properties, '$.legalTerms') as "legal_terms",
JSON_EXTRACT(properties, '$.privacyPolicy') as "privacy_policy",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.galleryPackageBlobSasUri') as "gallery_package_blob_sas_uri",
JSON_EXTRACT(properties, '$.productDetailsProperties') as "product_details_properties",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.publisherDisplayName') as "publisher_display_name",
JSON_EXTRACT(properties, '$.publisherIdentifier') as "publisher_identifier",
JSON_EXTRACT(properties, '$.offer') as "offer",
JSON_EXTRACT(properties, '$.offerVersion') as "offer_version",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.billingPartNumber') as "billing_part_number",
JSON_EXTRACT(properties, '$.galleryItemIdentity') as "gallery_item_identity",
JSON_EXTRACT(properties, '$.iconUris') as "icon_uris",
JSON_EXTRACT(properties, '$.payloadLength') as "payload_length",
JSON_EXTRACT(properties, '$.productKind') as "product_kind",
JSON_EXTRACT(properties, '$.productProperties') as "product_properties",
JSON_EXTRACT(properties, '$.compatibility') as "compatibility",
subscriptionId,
resourceGroupName,
activationName,
productName
FROM azure_stack.azure_bridge_admin.downloaded_products
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND activationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.vmExtensionType') as "vm_extension_type",
json_extract_path_text(properties, '$.links') as "links",
json_extract_path_text(properties, '$.legalTerms') as "legal_terms",
json_extract_path_text(properties, '$.privacyPolicy') as "privacy_policy",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.galleryPackageBlobSasUri') as "gallery_package_blob_sas_uri",
json_extract_path_text(properties, '$.productDetailsProperties') as "product_details_properties",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.publisherDisplayName') as "publisher_display_name",
json_extract_path_text(properties, '$.publisherIdentifier') as "publisher_identifier",
json_extract_path_text(properties, '$.offer') as "offer",
json_extract_path_text(properties, '$.offerVersion') as "offer_version",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.billingPartNumber') as "billing_part_number",
json_extract_path_text(properties, '$.galleryItemIdentity') as "gallery_item_identity",
json_extract_path_text(properties, '$.iconUris') as "icon_uris",
json_extract_path_text(properties, '$.payloadLength') as "payload_length",
json_extract_path_text(properties, '$.productKind') as "product_kind",
json_extract_path_text(properties, '$.productProperties') as "product_properties",
json_extract_path_text(properties, '$.compatibility') as "compatibility",
subscriptionId,
resourceGroupName,
activationName,
productName
FROM azure_stack.azure_bridge_admin.downloaded_products
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND activationName = 'replace-me';
```

</TabItem>
</Tabs>
