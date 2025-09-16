--- 
title: locations_billing_specs
hide_title: false
hide_table_of_contents: false
keywords:
  - locations_billing_specs
  - hdinsight
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

Creates, updates, deletes, gets or lists a <code>locations_billing_specs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>locations_billing_specs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hdinsight.locations_billing_specs" /></td></tr>
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

OK response definition.

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
    <td><CopyableCode code="billingResources" /></td>
    <td><code>array</code></td>
    <td>The billing and managed disk billing resources for a region.</td>
</tr>
<tr>
    <td><CopyableCode code="vmSizeFilters" /></td>
    <td><code>array</code></td>
    <td>The virtual machine filtering mode. Effectively this can enabling or disabling the virtual machine sizes in a particular set.</td>
</tr>
<tr>
    <td><CopyableCode code="vmSizeProperties" /></td>
    <td><code>array</code></td>
    <td>The vm size properties.</td>
</tr>
<tr>
    <td><CopyableCode code="vmSizes" /></td>
    <td><code>array</code></td>
    <td>The virtual machine sizes to include or exclude.</td>
</tr>
<tr>
    <td><CopyableCode code="vmSizesWithEncryptionAtHost" /></td>
    <td><code>array</code></td>
    <td>The vm sizes which enable encryption at host.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Lists the billingSpecs for the specified subscription and location.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The Azure location (region) for which to make the request.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Lists the billingSpecs for the specified subscription and location.

```sql
SELECT
billingResources,
vmSizeFilters,
vmSizeProperties,
vmSizes,
vmSizesWithEncryptionAtHost
FROM azure.hdinsight.locations_billing_specs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
;
```
</TabItem>
</Tabs>
