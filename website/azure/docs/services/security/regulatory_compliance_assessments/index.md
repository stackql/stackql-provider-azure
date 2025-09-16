--- 
title: regulatory_compliance_assessments
hide_title: false
hide_table_of_contents: false
keywords:
  - regulatory_compliance_assessments
  - security
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

Creates, updates, deletes, gets or lists a <code>regulatory_compliance_assessments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>regulatory_compliance_assessments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.regulatory_compliance_assessments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
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
    <td>Regulatory compliance assessment data</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td>Regulatory compliance assessment data</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-regulatoryComplianceStandardName"><code>regulatoryComplianceStandardName</code></a>, <a href="#parameter-regulatoryComplianceControlName"><code>regulatoryComplianceControlName</code></a>, <a href="#parameter-regulatoryComplianceAssessmentName"><code>regulatoryComplianceAssessmentName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Supported regulatory compliance details and state for selected assessment</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-regulatoryComplianceStandardName"><code>regulatoryComplianceStandardName</code></a>, <a href="#parameter-regulatoryComplianceControlName"><code>regulatoryComplianceControlName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Details and state of assessments mapped to selected regulatory compliance control</td>
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
<tr id="parameter-regulatoryComplianceAssessmentName">
    <td><CopyableCode code="regulatoryComplianceAssessmentName" /></td>
    <td><code>string</code></td>
    <td>Name of the regulatory compliance assessment object</td>
</tr>
<tr id="parameter-regulatoryComplianceControlName">
    <td><CopyableCode code="regulatoryComplianceControlName" /></td>
    <td><code>string</code></td>
    <td>Name of the regulatory compliance control object</td>
</tr>
<tr id="parameter-regulatoryComplianceStandardName">
    <td><CopyableCode code="regulatoryComplianceStandardName" /></td>
    <td><code>string</code></td>
    <td>Name of the regulatory compliance standard object</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription ID</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter. Optional.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>API version for the operation</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Supported regulatory compliance details and state for selected assessment

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.regulatory_compliance_assessments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND regulatoryComplianceStandardName = '{{ regulatoryComplianceStandardName }}' -- required
AND regulatoryComplianceControlName = '{{ regulatoryComplianceControlName }}' -- required
AND regulatoryComplianceAssessmentName = '{{ regulatoryComplianceAssessmentName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Details and state of assessments mapped to selected regulatory compliance control

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.regulatory_compliance_assessments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND regulatoryComplianceStandardName = '{{ regulatoryComplianceStandardName }}' -- required
AND regulatoryComplianceControlName = '{{ regulatoryComplianceControlName }}' -- required
AND api-version = '{{ api-version }}'
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
