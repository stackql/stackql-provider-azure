--- 
title: profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - profiles
  - cdn
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

Creates, updates, deletes, gets or lists a <code>profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>profiles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.profiles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

OK. The request has succeeded.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities).</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the profile. Used by portal to differentiate traditional CDN profile and new AFD profile.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The JSON object that contains the properties required to create a profile.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

OK. The request has succeeded.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities).</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the profile. Used by portal to differentiate traditional CDN profile and new AFD profile.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The JSON object that contains the properties required to create a profile.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. The request has succeeded.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities).</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the profile. Used by portal to differentiate traditional CDN profile and new AFD profile.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The JSON object that contains the properties required to create a profile.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an Azure Front Door Standard or Azure Front Door Premium or CDN profile with the specified profile name under the specified subscription and resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all of the Azure Front Door Standard, Azure Front Door Premium, and CDN profiles within a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all of the Azure Front Door Standard, Azure Front Door Premium, and CDN profiles within an Azure subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Creates a new Azure Front Door Standard or Azure Front Door Premium or CDN profile with a profile name under the specified subscription and resource group.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an existing Azure Front Door Standard or Azure Front Door Premium or CDN profile with the specified profile name under the specified subscription and resource group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing  Azure Front Door Standard or Azure Front Door Premium or CDN profile with the specified parameters. Deleting a profile will result in the deletion of all of the sub-resources including endpoints, origins and custom domains.</td>
</tr>
<tr>
    <td><a href="#can_migrate"><CopyableCode code="can_migrate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-classicResourceReference"><code>classicResourceReference</code></a></td>
    <td></td>
    <td>Checks if CDN profile can be migrated to Azure Frontdoor(Standard/Premium) profile.</td>
</tr>
<tr>
    <td><a href="#migrate"><CopyableCode code="migrate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-classicResourceReference"><code>classicResourceReference</code></a>, <a href="#parameter-sku"><code>sku</code></a>, <a href="#parameter-profileName"><code>profileName</code></a></td>
    <td></td>
    <td>Migrate the CDN profile to Azure Frontdoor(Standard/Premium) profile. The change need to be committed after this.</td>
</tr>
<tr>
    <td><a href="#migration_commit"><CopyableCode code="migration_commit" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Commit the migrated Azure Frontdoor(Standard/Premium) profile.</td>
</tr>
<tr>
    <td><a href="#generate_sso_uri"><CopyableCode code="generate_sso_uri" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Generates a dynamic SSO URI used to sign in to the CDN supplemental portal. Supplemental portal is used to configure advanced feature capabilities that are not yet available in the Azure portal, such as core reports in a standard profile; rules engine, advanced HTTP reports, and real-time stats and alerts in a premium profile. The SSO URI changes approximately every 10 minutes.</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-profileName">
    <td><CopyableCode code="profileName" /></td>
    <td><code>string</code></td>
    <td>Name of the CDN profile which is unique within the resource group.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets an Azure Front Door Standard or Azure Front Door Premium or CDN profile with the specified profile name under the specified subscription and resource group.

```sql
SELECT
identity,
kind,
location,
properties,
sku,
tags
FROM azure.cdn.profiles
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Lists all of the Azure Front Door Standard, Azure Front Door Premium, and CDN profiles within a resource group.

```sql
SELECT
identity,
kind,
location,
properties,
sku,
tags
FROM azure.cdn.profiles
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all of the Azure Front Door Standard, Azure Front Door Premium, and CDN profiles within an Azure subscription.

```sql
SELECT
identity,
kind,
location,
properties,
sku,
tags
FROM azure.cdn.profiles
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a new Azure Front Door Standard or Azure Front Door Premium or CDN profile with a profile name under the specified subscription and resource group.

```sql
INSERT INTO azure.cdn.profiles (
data__location,
data__tags,
data__sku,
data__identity,
data__properties,
resourceGroupName,
profileName,
subscriptionId
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ sku }}' /* required */,
'{{ identity }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ profileName }}',
'{{ subscriptionId }}'
RETURNING
identity,
kind,
location,
properties,
sku,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: profiles
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the profiles resource.
    - name: profileName
      value: string
      description: Required parameter for the profiles resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the profiles resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: sku
      value: object
      description: |
        The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.
    - name: identity
      value: object
      description: |
        Managed service identity (system assigned and/or user assigned identities).
    - name: properties
      value: object
      description: |
        The JSON object that contains the properties required to create a profile.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates an existing Azure Front Door Standard or Azure Front Door Premium or CDN profile with the specified profile name under the specified subscription and resource group.

```sql
UPDATE azure.cdn.profiles
SET 
data__tags = '{{ tags }}',
data__identity = '{{ identity }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND profileName = '{{ profileName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
identity,
kind,
location,
properties,
sku,
tags;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes an existing  Azure Front Door Standard or Azure Front Door Premium or CDN profile with the specified parameters. Deleting a profile will result in the deletion of all of the sub-resources including endpoints, origins and custom domains.

```sql
DELETE FROM azure.cdn.profiles
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND profileName = '{{ profileName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="can_migrate"
    values={[
        { label: 'can_migrate', value: 'can_migrate' },
        { label: 'migrate', value: 'migrate' },
        { label: 'migration_commit', value: 'migration_commit' },
        { label: 'generate_sso_uri', value: 'generate_sso_uri' }
    ]}
>
<TabItem value="can_migrate">

Checks if CDN profile can be migrated to Azure Frontdoor(Standard/Premium) profile.

```sql
EXEC azure.cdn.profiles.can_migrate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"classicResourceReference": "{{ classicResourceReference }}"
}'
;
```
</TabItem>
<TabItem value="migrate">

Migrate the CDN profile to Azure Frontdoor(Standard/Premium) profile. The change need to be committed after this.

```sql
EXEC azure.cdn.profiles.migrate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"sku": "{{ sku }}", 
"classicResourceReference": "{{ classicResourceReference }}", 
"profileName": "{{ profileName }}", 
"migrationWebApplicationFirewallMappings": "{{ migrationWebApplicationFirewallMappings }}"
}'
;
```
</TabItem>
<TabItem value="migration_commit">

Commit the migrated Azure Frontdoor(Standard/Premium) profile.

```sql
EXEC azure.cdn.profiles.migration_commit 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="generate_sso_uri">

Generates a dynamic SSO URI used to sign in to the CDN supplemental portal. Supplemental portal is used to configure advanced feature capabilities that are not yet available in the Azure portal, such as core reports in a standard profile; rules engine, advanced HTTP reports, and real-time stats and alerts in a premium profile. The SSO URI changes approximately every 10 minutes.

```sql
EXEC azure.cdn.profiles.generate_sso_uri 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
