# Automated API Testing (PetStore API)

*Date:* May 2026 <br>
*Target:* Swagger endpoints (add, read, update a pet) <br>
*Status:* Passed

---

## Conclusions:

- Tested endpoints worked as expected, even when some request use information from previous tests.
- There is a risk rate, because of some tests depends on information from previous tests, this could cause a cascade failure.
- More API tests could be added without issues following the current structure.
