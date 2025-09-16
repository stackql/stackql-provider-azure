--- 
title: forecasts
hide_title: false
hide_table_of_contents: false
keywords:
  - forecasts
  - cost_management
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

Creates, updates, deletes, gets or lists a <code>forecasts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>forecasts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.forecasts" /></td></tr>
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
    <td><a href="#usage"><CopyableCode code="usage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-timeframe"><code>timeframe</code></a>, <a href="#parameter-dataset"><code>dataset</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists the forecast charges for scope defined.</td>
</tr>
<tr>
    <td><a href="#external_cloud_provider_usage"><CopyableCode code="external_cloud_provider_usage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-externalCloudProviderType"><code>externalCloudProviderType</code></a>, <a href="#parameter-externalCloudProviderId"><code>externalCloudProviderId</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-timeframe"><code>timeframe</code></a>, <a href="#parameter-dataset"><code>dataset</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists the forecast charges for external cloud provider type defined.</td>
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
<tr id="parameter-externalCloudProviderId">
    <td><CopyableCode code="externalCloudProviderId" /></td>
    <td><code>string</code></td>
    <td>This can be '&#123;externalSubscriptionId&#125;' for linked account or '&#123;externalBillingAccountId&#125;' for consolidated account used with dimension/query operations.</td>
</tr>
<tr id="parameter-externalCloudProviderType">
    <td><CopyableCode code="externalCloudProviderType" /></td>
    <td><code>string</code></td>
    <td>The external cloud provider type associated with dimension/query operations. This includes 'externalSubscriptions' for linked account and 'externalBillingAccounts' for consolidated account.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope associated with forecast operations. This includes '/subscriptions/&#123;subscriptionId&#125;/' for subscription scope, '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;' for resourceGroup scope, '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;' for Billing Account scope and '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/departments/&#123;departmentId&#125;' for Department scope, '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/enrollmentAccounts/&#123;enrollmentAccountId&#125;' for EnrollmentAccount scope, '/providers/Microsoft.Management/managementGroups/&#123;managementGroupId&#125; for Management Group scope, '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingProfiles/&#123;billingProfileId&#125;' for billingProfile scope, '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingProfiles/&#123;billingProfileId&#125;/invoiceSections/&#123;invoiceSectionId&#125;' for invoiceSection scope, and '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/customers/&#123;customerId&#125;' specific for partners.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter forecasts by properties/usageDate (Utc time), properties/chargeType or properties/grain. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently support 'ne', 'or', or 'not'.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="usage"
    values={[
        { label: 'usage', value: 'usage' },
        { label: 'external_cloud_provider_usage', value: 'external_cloud_provider_usage' }
    ]}
>
<TabItem value="usage">

Lists the forecast charges for scope defined.

```sql
EXEC azure.cost_management.forecasts.usage 
@scope='{{ scope }}' --required, 
@$filter='{{ $filter }}' 
@@json=
'{
"type": "{{ type }}", 
"timeframe": "{{ timeframe }}", 
"timePeriod": "{{ timePeriod }}", 
"dataset": "{{ dataset }}", 
"includeActualCost": {{ includeActualCost }}, 
"includeFreshPartialCost": {{ includeFreshPartialCost }}
}'
;
```
</TabItem>
<TabItem value="external_cloud_provider_usage">

Lists the forecast charges for external cloud provider type defined.

```sql
EXEC azure.cost_management.forecasts.external_cloud_provider_usage 
@externalCloudProviderType='{{ externalCloudProviderType }}' --required, 
@externalCloudProviderId='{{ externalCloudProviderId }}' --required, 
@$filter='{{ $filter }}' 
@@json=
'{
"type": "{{ type }}", 
"timeframe": "{{ timeframe }}", 
"timePeriod": "{{ timePeriod }}", 
"dataset": "{{ dataset }}", 
"includeActualCost": {{ includeActualCost }}, 
"includeFreshPartialCost": {{ includeFreshPartialCost }}
}'
;
```
</TabItem>
</Tabs>
