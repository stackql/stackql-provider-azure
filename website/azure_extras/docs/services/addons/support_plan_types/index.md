--- 
title: support_plan_types
hide_title: false
hide_table_of_contents: false
keywords:
  - support_plan_types
  - addons
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

Creates, updates, deletes, gets or lists a <code>support_plan_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>support_plan_types</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.addons.support_plan_types" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_info', value: 'list_info' }
    ]}
>
<TabItem value="get">

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
    <td><code>string</code></td>
    <td>The id of the ARM resource, e.g. "/subscriptions/&#123;id&#125;/providers/Microsoft.Addons/supportProvider/&#123;supportProviderName&#125;/supportPlanTypes/&#123;planTypeName&#125;".</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the Canonical support plan, i.e. "essential", "standard" or "advanced".</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes Canonical support plan type and status.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Microsoft.Addons/supportProvider</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_info">

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
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Flag to indicate if this support plan type is currently enabled for the subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="oneTimeCharge" /></td>
    <td><code>string</code></td>
    <td>The one time charge status for the subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="supportPlanType" /></td>
    <td><code>string</code></td>
    <td>Support plan type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-planTypeName"><code>planTypeName</code></a></td>
    <td></td>
    <td>Returns whether or not the canonical support plan of type &#123;type&#125; is enabled for the subscription.</td>
</tr>
<tr>
    <td><a href="#list_info"><CopyableCode code="list_info" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns the canonical support plan information for all types for the subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-planTypeName"><code>planTypeName</code></a></td>
    <td></td>
    <td>Creates or updates the Canonical support plan of type &#123;type&#125; for the subscription.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-planTypeName"><code>planTypeName</code></a></td>
    <td></td>
    <td>Cancels the Canonical support plan of type &#123;type&#125; for the subscription.</td>
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
<tr id="parameter-planTypeName">
    <td><CopyableCode code="planTypeName" /></td>
    <td><code>string</code></td>
    <td>The Canonical support plan type.</td>
</tr>
<tr id="parameter-providerName">
    <td><CopyableCode code="providerName" /></td>
    <td><code>string</code></td>
    <td>The support plan type. For now the only valid type is "canonical".</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials that uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_info', value: 'list_info' }
    ]}
>
<TabItem value="get">

Returns whether or not the canonical support plan of type &#123;type&#125; is enabled for the subscription.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.addons.support_plan_types
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND providerName = '{{ providerName }}' -- required
AND planTypeName = '{{ planTypeName }}' -- required
;
```
</TabItem>
<TabItem value="list_info">

Returns the canonical support plan information for all types for the subscription.

```sql
SELECT
enabled,
oneTimeCharge,
supportPlanType
FROM azure_extras.addons.support_plan_types
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates or updates the Canonical support plan of type &#123;type&#125; for the subscription.

```sql
INSERT INTO azure_extras.addons.support_plan_types (
subscriptionId,
providerName,
planTypeName
)
SELECT 
'{{ subscriptionId }}',
'{{ providerName }}',
'{{ planTypeName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: support_plan_types
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the support_plan_types resource.
    - name: providerName
      value: string
      description: Required parameter for the support_plan_types resource.
    - name: planTypeName
      value: string
      description: Required parameter for the support_plan_types resource.
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

Cancels the Canonical support plan of type &#123;type&#125; for the subscription.

```sql
DELETE FROM azure_extras.addons.support_plan_types
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND providerName = '{{ providerName }}' --required
AND planTypeName = '{{ planTypeName }}' --required
;
```
</TabItem>
</Tabs>
