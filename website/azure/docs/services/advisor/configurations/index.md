--- 
title: configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - configurations
  - advisor
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

Creates, updates, deletes, gets or lists a <code>configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.advisor.configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_resource_group"
    values={[
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="list_by_resource_group">

OK. Successfully retrieved zero or more configurations.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The Advisor configuration data structure.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

OK. Successfully retrieved zero or more configurations.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The Advisor configuration data structure.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve Azure Advisor configurations and also retrieve configurations of contained resource groups.</td>
</tr>
<tr>
    <td><a href="#create_in_resource_group"><CopyableCode code="create_in_resource_group" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-configurationName"><code>configurationName</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_in_subscription"><CopyableCode code="create_in_subscription" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-configurationName"><code>configurationName</code></a></td>
    <td></td>
    <td>Create/Overwrite Azure Advisor configuration and also delete all configurations of contained resource groups.</td>
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
<tr id="parameter-configurationName">
    <td><CopyableCode code="configurationName" /></td>
    <td><code>string</code></td>
    <td>Advisor configuration name. Value must be 'default'</td>
</tr>
<tr id="parameter-resourceGroup">
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_resource_group"
    values={[
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="list_by_resource_group">

OK. Successfully retrieved zero or more configurations.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.advisor.configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Retrieve Azure Advisor configurations and also retrieve configurations of contained resource groups.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.advisor.configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_in_resource_group"
    values={[
        { label: 'create_in_resource_group', value: 'create_in_resource_group' },
        { label: 'create_in_subscription', value: 'create_in_subscription' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_in_resource_group">

No description available.

```sql
INSERT INTO azure.advisor.configurations (
data__properties,
subscriptionId,
configurationName,
resourceGroup
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ configurationName }}',
'{{ resourceGroup }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="create_in_subscription">

Create/Overwrite Azure Advisor configuration and also delete all configurations of contained resource groups.

```sql
INSERT INTO azure.advisor.configurations (
data__properties,
subscriptionId,
configurationName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ configurationName }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: configurations
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the configurations resource.
    - name: configurationName
      value: string
      description: Required parameter for the configurations resource.
    - name: resourceGroup
      value: string
      description: Required parameter for the configurations resource.
    - name: properties
      value: object
      description: |
        The Advisor configuration data structure.
```
</TabItem>
</Tabs>
