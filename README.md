# Standalone Lean 4 Verification for JSP-000937

## Erdős Problem #1130 (de Boor & Pinkus 1978)

This repository contains a standalone, fully verified Lean 4 formalization of the resolution of **Erdős Problem #1130** (catalogued as **JSP-000937** in the Justin Sun Prize problems).

### Mathematical Content
- **Problem**: Which interpolation nodes maximize the smallest peak error-amplification factor among intervals between consecutive nodes? Does equioscillation of the gap peaks characterize optimal free nodes?
- **Resolution**: Carl de Boor and Allan Pinkus (1978) established that for the free-node formulation, equioscillation does not characterize all maximizers. In particular, for three nodes, $(-1/2, 0, 1/2)$ is an optimal configuration whose four augmented gap peaks are not all equal.
- **Theorem in Lean 4**: `Erdos1130.not_erdos_1130` (`jsp_000937`), formally proved with 0 `sorry` and 0 `admit`.

### Axioms
Verified by Lean 4 kernel with `#print axioms`:
`[propext, Classical.choice, Quot.sound]` (standard foundational axioms only).

### Build & Verify
```bash
lake update
lake exe cache get
lake build
lake env lean JSP_000937.lean
```
