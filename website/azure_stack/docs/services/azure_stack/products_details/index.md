--- 
title: products_details
hide_title: false
hide_table_of_contents: false
keywords:
  - products_details
  - azure_stack
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

Creates, updates, deletes, gets or lists a <code>products_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>products_details</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack.products_details" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

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
    <td><CopyableCode code="galleryPackageBlobSasUri" /></td>
    <td><code>string</code></td>
    <td>The URI to the .azpkg file that provides information required for showing product in the gallery.</td>
</tr>
<tr>
    <td><CopyableCode code="productKind" /></td>
    <td><code>string</code></td>
    <td>Specifies the kind of the product (virtualMachine or virtualMachineExtension).</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Specifies additional properties describing the product.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-registrationName"><code>registrationName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Returns the extended properties of a product.</td>
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
<tr id="parameter-productName">
    <td><CopyableCode code="productName" /></td>
    <td><code>string</code></td>
    <td>Name of the product.</td>
</tr>
<tr id="parameter-registrationName">
    <td><CopyableCode code="registrationName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Stack registration.</td>
</tr>
<tr id="parameter-resourceGroup">
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials that uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Returns the extended properties of a product.

```sql
SELECT
galleryPackageBlobSasUri,
productKind,
properties
FROM azure_stack.azure_stack.products_details
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND registrationName = '{{ registrationName }}' -- required
AND productName = '{{ productName }}' -- required
;
```
</TabItem>
</Tabs>
