--- 
title: addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - addresses
  - billing
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

Creates, updates, deletes, gets or lists an <code>addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>addresses</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.addresses" /></td></tr>
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
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-addressLine1"><code>addressLine1</code></a>, <a href="#parameter-country"><code>country</code></a></td>
    <td></td>
    <td>Validates an address. Use the operation to validate an address before using it as soldTo or a billTo address.</td>
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
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="validate"
    values={[
        { label: 'validate', value: 'validate' }
    ]}
>
<TabItem value="validate">

Validates an address. Use the operation to validate an address before using it as soldTo or a billTo address.

```sql
EXEC azure.billing.addresses.validate 
@@json=
'{
"addressLine1": "{{ addressLine1 }}", 
"addressLine2": "{{ addressLine2 }}", 
"addressLine3": "{{ addressLine3 }}", 
"city": "{{ city }}", 
"companyName": "{{ companyName }}", 
"country": "{{ country }}", 
"district": "{{ district }}", 
"email": "{{ email }}", 
"firstName": "{{ firstName }}", 
"lastName": "{{ lastName }}", 
"middleName": "{{ middleName }}", 
"phoneNumber": "{{ phoneNumber }}", 
"postalCode": "{{ postalCode }}", 
"region": "{{ region }}", 
"isValidAddress": {{ isValidAddress }}
}'
;
```
</TabItem>
</Tabs>
