--- 
title: searches
hide_title: false
hide_table_of_contents: false
keywords:
  - searches
  - marketplace_catalog
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

Creates, updates, deletes, gets or lists a <code>searches</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>searches</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace_catalog.searches" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#post_arm"><CopyableCode code="post_arm" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-x-ms-client-tenant-id"><code>x-ms-client-tenant-id</code></a>, <a href="#parameter-languages"><code>languages</code></a>, <a href="#parameter-stores"><code>stores</code></a></td>
    <td><a href="#parameter-x-ms-app"><code>x-ms-app</code></a></td>
    <td></td>
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
<tr id="parameter-x-ms-client-tenant-id">
    <td><CopyableCode code="x-ms-client-tenant-id" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-x-ms-app">
    <td><CopyableCode code="x-ms-app" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="post_arm"
    values={[
        { label: 'post_arm', value: 'post_arm' }
    ]}
>
<TabItem value="post_arm">

Returns a list of azure private store marketplace catalog offers and total count and facets

```sql
EXEC azure_extras.marketplace_catalog.searches.post_arm 
@x-ms-client-tenant-id='{{ x-ms-client-tenant-id }}' --required, 
@x-ms-app='{{ x-ms-app }}' 
@@json=
'{
"searchQuery": "{{ searchQuery }}", 
"publisherName": "{{ publisherName }}", 
"skip": {{ skip }}, 
"take": {{ take }}, 
"isAzureBenefitEligible": {{ isAzureBenefitEligible }}, 
"isMicrosoftProduct": {{ isMicrosoftProduct }}, 
"isThirdParty": {{ isThirdParty }}, 
"isCoreVm": {{ isCoreVm }}, 
"isPreferredSolution": {{ isPreferredSolution }}, 
"isAdditionalPurchaseRequired": {{ isAdditionalPurchaseRequired }}, 
"isPowerBICertified": {{ isPowerBICertified }}, 
"isIndustryCloud": {{ isIndustryCloud }}, 
"languages": "{{ languages }}", 
"stores": "{{ stores }}", 
"select": "{{ select }}", 
"sortBy": "{{ sortBy }}", 
"offerTypes": "{{ offerTypes }}", 
"pricingTypes": "{{ pricingTypes }}", 
"privateStoreAllowances": "{{ privateStoreAllowances }}", 
"appSourceIndustries": "{{ appSourceIndustries }}", 
"operatingSystems": "{{ operatingSystems }}", 
"appSourceCategories": "{{ appSourceCategories }}", 
"azureIndustries": "{{ azureIndustries }}", 
"azureCategories": "{{ azureCategories }}", 
"azurePortalCategories": "{{ azurePortalCategories }}", 
"facets": "{{ facets }}"
}'
;
```
</TabItem>
</Tabs>
