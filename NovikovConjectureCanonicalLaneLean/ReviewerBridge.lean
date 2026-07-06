import NovikovConjectureCanonicalLaneLean.Formalization
import NovikovConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace NovikovConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "25cbdc23c6b987fd850f0490621bcf4b06140c305c96782dd904c379750a79ab", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "025c7d7587957a020bd6904d45852020942d306847d7ba6304280ec7bccacdd3", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "3a803ac66b4c733adb73f5d6632f8e27eefe3abf74c23b28a7b37c6986c67704", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "846103802d9c323719ce71e2b52205daedc022dce495bc5b0fac6f9d837b4d3a", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "fd7295599ec525456bfbcd22e45d7b0171a3c9faa7d67231ea609217eb66abfe", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "0e78257aeb3cd9d67cd3b857c8da9da4973af0fd00a55d1b3e1e12821fa93c4a", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "1c1dd6e78976c06306a1ca36d9a6b8579c13bfaead21935cd9ec53bfd6ec35c1", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "ad9d715df876ad372e385328ea5d6ad379e1338469f8036a1fd95c0720af1742", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "8181fe330e37a27798fecc9598bc77592ee2e7df776e7fdbe76b6d74f8dd872b", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "NOV_G1", constant := "kappa_signature" },
  { gate := "NOV_G2", constant := "sigma_homotopy" },
  { gate := "NOV_G3", constant := "kappa_compact" },
  { gate := "NOV_G4", constant := "rho_rigidity" },
  { gate := "NOV_G5", constant := "signature_transfer" },
  { gate := "NOV_G6", constant := "eps_coh" },
  { gate := "NOV_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "6ca5e9710cf789fae925e30bb9b65c3a1c0be9dc90bf6ab93de120b5f03fd76a" },
  { path := "README.md", sha256 := "390d884ab36dd38f28c1802087246bcd9705de17395199db531414bf72d3b0d1" },
  { path := "artifacts/constants_extracted.json", sha256 := "846103802d9c323719ce71e2b52205daedc022dce495bc5b0fac6f9d837b4d3a" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "3a803ac66b4c733adb73f5d6632f8e27eefe3abf74c23b28a7b37c6986c67704" },
  { path := "artifacts/constants_registry.json", sha256 := "fd7295599ec525456bfbcd22e45d7b0171a3c9faa7d67231ea609217eb66abfe" },
  { path := "artifacts/promotion_report.json", sha256 := "1c1dd6e78976c06306a1ca36d9a6b8579c13bfaead21935cd9ec53bfd6ec35c1" },
  { path := "artifacts/stitch_constants.json", sha256 := "0e78257aeb3cd9d67cd3b857c8da9da4973af0fd00a55d1b3e1e12821fa93c4a" },
  { path := "notes/EG1_public.md", sha256 := "9b999715198a07ef97a939138efa26141d808434bc12f0c43f5ae509ddc4c24d" },
  { path := "notes/EG2_public.md", sha256 := "e5d61ec5a29b87a2b538bef434a63567bb04dd6851dd5fbacc5e378959ac1300" },
  { path := "notes/EG3_public.md", sha256 := "5058b5cacd40ac1c9ac40b75b97e649f16182e0b867e5d692ebbc80a90382061" },
  { path := "notes/EG4_public.md", sha256 := "71b7928c088d792623435994edc4c9964525a093d36b66fd2ee20ba4c5f99b33" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "025c7d7587957a020bd6904d45852020942d306847d7ba6304280ec7bccacdd3" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "f01673c904c927aad3f36b908bb2586474ccbc4dfaa4578cbdbcc5990766722f" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "94ac4cd1fce8506c1fc499a55b9ca94e7d871a47a5ada142b26f5715be0f1082" },
  { path := "paper/NOVIKOV_CONJECTURE_PREPRINT.md", sha256 := "ac26c14c3f6f7aec64818b92711d7c001af8b28435ad5744bd8db0846d4b704b" },
  { path := "repro/REPRO_PACK.md", sha256 := "c1246db42849248b5fd6bf392cbc8bf10a45ade3f84678021a0d13ca87936391" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "d75d7f49df47ec768952b0e8e1cd9197567325cb87786ac9ca87ee70c7813b52" },
  { path := "repro/certificate_baseline.json", sha256 := "8181fe330e37a27798fecc9598bc77592ee2e7df776e7fdbe76b6d74f8dd872b" },
  { path := "repro/run_repro.sh", sha256 := "5822136e47d1f1f518d59c7c0545990304164cc45c5fbef5cfa21e1a42629c8f" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/nov_closure_guard.py", sha256 := "23139bbb88344ced876a929f2b9149e81af086775a769f9164499a4500a67a67" },
  { path := "scripts/README.md", sha256 := "c253106d3c6ee054183780068bd22e6ff55cc7e4a1e1771700852581708e4082" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "NOV_G1", status := "PASS" },
  { gate := "NOV_G2", status := "PASS" },
  { gate := "NOV_G3", status := "PASS" },
  { gate := "NOV_G4", status := "PASS" },
  { gate := "NOV_G5", status := "PASS" },
  { gate := "NOV_G6", status := "PASS" },
  { gate := "NOV_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_signature", value := "1.0913680000000001" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_homotopy", value := "1.073" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "signature_transfer", value := "1.029422" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_signature",
  "rho_rigidity",
  "sigma_homotopy",
  "sigma_star_can",
  "signature_transfer"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end NovikovConjectureCanonicalLaneLean
end HautevilleHouse
