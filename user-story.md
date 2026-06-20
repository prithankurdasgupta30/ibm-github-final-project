# User Story

## User Story Template

**As a** customer

**I need** the ability to delete a product from the catalog

**So that** I can remove products that are no longer available or are obsolete.

---

## Acceptance Criteria

```gherkin
Given a product exists in the catalog
When I request to delete the product
Then the product should be removed successfully
And the service should return HTTP 204 No Content
And the deleted product should no longer be retrievable
```

---

## Definition of Done

- Product can be deleted using the DELETE endpoint.
- HTTP status code **204 No Content** is returned.
- Response body is empty.
- Deleted product is no longer returned by GET requests.
- Unit tests pass successfully.
- GitHub Actions CI pipeline passes successfully.
