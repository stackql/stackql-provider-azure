--- 
title: certificate_orders
hide_title: false
hide_table_of_contents: false
keywords:
  - certificate_orders
  - app_service
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

Creates, updates, deletes, gets or lists a <code>certificate_orders</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>certificate_orders</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.certificate_orders" /></td></tr>
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
    <td>AppServiceCertificateOrder resource specific properties</td>
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
<TabItem value="list_by_resource_group">

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
    <td>AppServiceCertificateOrder resource specific properties</td>
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
    <td>AppServiceCertificateOrder resource specific properties</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get a certificate order.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get certificate orders in a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for List all certificate orders in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Create or update a certificate purchase order.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Create or update a certificate purchase order.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Delete an existing certificate order.</td>
</tr>
<tr>
    <td><a href="#validate_purchase_information"><CopyableCode code="validate_purchase_information" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Validate information for a certificate order.</td>
</tr>
<tr>
    <td><a href="#reissue"><CopyableCode code="reissue" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Reissue an existing certificate order.</td>
</tr>
<tr>
    <td><a href="#renew"><CopyableCode code="renew" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Renew an existing certificate order.</td>
</tr>
<tr>
    <td><a href="#resend_email"><CopyableCode code="resend_email" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Resend certificate email.</td>
</tr>
<tr>
    <td><a href="#resend_request_emails"><CopyableCode code="resend_request_emails" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Resend domain verification ownership email containing steps on how to verify a domain for a given certificate order</td>
</tr>
<tr>
    <td><a href="#retrieve_site_seal"><CopyableCode code="retrieve_site_seal" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>This method is used to obtain the site seal information for an issued certificate. A site seal is a graphic that the certificate purchaser can embed on their web site to show their visitors information about their SSL certificate. If a web site visitor clicks on the site seal image, a pop-up page is displayed that contains detailed information about the SSL certificate. The site seal token is used to link the site seal graphic image to the appropriate certificate details pop-up page display when a user clicks on the site seal. The site seal images are expected to be static images and hosted by the reseller, to minimize delays for customer page load times.</td>
</tr>
<tr>
    <td><a href="#verify_domain_ownership"><CopyableCode code="verify_domain_ownership" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-certificateOrderName"><code>certificateOrderName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Verify domain ownership for this certificate order.</td>
</tr>
<tr>
    <td><a href="#retrieve_certificate_actions"><CopyableCode code="retrieve_certificate_actions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Retrieve the list of certificate actions.</td>
</tr>
<tr>
    <td><a href="#retrieve_certificate_email_history"><CopyableCode code="retrieve_certificate_email_history" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Retrieve email history.</td>
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
<tr id="parameter-certificateOrderName">
    <td><CopyableCode code="certificateOrderName" /></td>
    <td><code>string</code></td>
    <td>Name of the certificate order.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the certificate order.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
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

Description for Get a certificate order.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.app_service.certificate_orders
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND certificateOrderName = '{{ certificateOrderName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Description for Get certificate orders in a resource group.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.app_service.certificate_orders
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Description for List all certificate orders in a subscription.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.app_service.certificate_orders
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

Description for Create or update a certificate purchase order.

```sql
INSERT INTO azure.app_service.certificate_orders (
data__properties,
resourceGroupName,
certificateOrderName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ certificateOrderName }}',
'{{ subscriptionId }}'
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
- name: certificate_orders
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the certificate_orders resource.
    - name: certificateOrderName
      value: string
      description: Required parameter for the certificate_orders resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the certificate_orders resource.
    - name: properties
      value: object
      description: |
        AppServiceCertificateOrder resource specific properties
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

Description for Create or update a certificate purchase order.

```sql
UPDATE azure.app_service.certificate_orders
SET 
data__kind = '{{ kind }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND certificateOrderName = '{{ certificateOrderName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
properties,
systemData,
type;
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

Description for Delete an existing certificate order.

```sql
DELETE FROM azure.app_service.certificate_orders
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND certificateOrderName = '{{ certificateOrderName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate_purchase_information"
    values={[
        { label: 'validate_purchase_information', value: 'validate_purchase_information' },
        { label: 'reissue', value: 'reissue' },
        { label: 'renew', value: 'renew' },
        { label: 'resend_email', value: 'resend_email' },
        { label: 'resend_request_emails', value: 'resend_request_emails' },
        { label: 'retrieve_site_seal', value: 'retrieve_site_seal' },
        { label: 'verify_domain_ownership', value: 'verify_domain_ownership' },
        { label: 'retrieve_certificate_actions', value: 'retrieve_certificate_actions' },
        { label: 'retrieve_certificate_email_history', value: 'retrieve_certificate_email_history' }
    ]}
>
<TabItem value="validate_purchase_information">

Description for Validate information for a certificate order.

```sql
EXEC azure.app_service.certificate_orders.validate_purchase_information 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="reissue">

Description for Reissue an existing certificate order.

```sql
EXEC azure.app_service.certificate_orders.reissue 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@certificateOrderName='{{ certificateOrderName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="renew">

Description for Renew an existing certificate order.

```sql
EXEC azure.app_service.certificate_orders.renew 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@certificateOrderName='{{ certificateOrderName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="resend_email">

Description for Resend certificate email.

```sql
EXEC azure.app_service.certificate_orders.resend_email 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@certificateOrderName='{{ certificateOrderName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="resend_request_emails">

Resend domain verification ownership email containing steps on how to verify a domain for a given certificate order

```sql
EXEC azure.app_service.certificate_orders.resend_request_emails 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@certificateOrderName='{{ certificateOrderName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}"
}'
;
```
</TabItem>
<TabItem value="retrieve_site_seal">

This method is used to obtain the site seal information for an issued certificate. A site seal is a graphic that the certificate purchaser can embed on their web site to show their visitors information about their SSL certificate. If a web site visitor clicks on the site seal image, a pop-up page is displayed that contains detailed information about the SSL certificate. The site seal token is used to link the site seal graphic image to the appropriate certificate details pop-up page display when a user clicks on the site seal. The site seal images are expected to be static images and hosted by the reseller, to minimize delays for customer page load times.

```sql
EXEC azure.app_service.certificate_orders.retrieve_site_seal 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@certificateOrderName='{{ certificateOrderName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"lightTheme": {{ lightTheme }}, 
"locale": "{{ locale }}"
}'
;
```
</TabItem>
<TabItem value="verify_domain_ownership">

Description for Verify domain ownership for this certificate order.

```sql
EXEC azure.app_service.certificate_orders.verify_domain_ownership 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@certificateOrderName='{{ certificateOrderName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="retrieve_certificate_actions">

Description for Retrieve the list of certificate actions.

```sql
EXEC azure.app_service.certificate_orders.retrieve_certificate_actions 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="retrieve_certificate_email_history">

Description for Retrieve email history.

```sql
EXEC azure.app_service.certificate_orders.retrieve_certificate_email_history 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
