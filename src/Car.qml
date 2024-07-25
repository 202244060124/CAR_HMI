import QtQuick 2.2
import QtQuick3D 1.15

Node {
    // Materials
    DefaultMaterial {
        id: amg_Word_Black_material

        diffuseColor: "#ffa3a3a3"
    }
    // end of Materials

    Node {
        id: scene

        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)

        Model {
            id: circle_048

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(1, -3.67569e-06, 0, 0)
            scale.x: 0.116542
            scale.y: 0.116542
            scale.z: 0.116542
            source: "meshes/circle_048.mesh"
            y: -2.42495
            z: 0.100097
        }
        Model {
            id: plane_084

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/plane_084.mesh"
            x: 1.36489
        }
        Model {
            id: circle_047

            materials: [amg_Word_Black_material]
            source: "meshes/circle_047.mesh"
            y: 3.73069
        }
        Model {
            id: circle_045

            materials: [amg_Word_Black_material]
            source: "meshes/circle_045.mesh"
            y: -4.06832
        }
        Model {
            id: plane_059

            materials: [amg_Word_Black_material]
            source: "meshes/plane_059.mesh"
            x: 0.00478818
        }
        Model {
            id: plane_058

            materials: [amg_Word_Black_material]
            source: "meshes/plane_058.mesh"
            x: 0.00478818
        }
        Model {
            id: plane_056

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.15202e-07, -1.15202e-07, 0.707107, 0.707107)
            scale.x: 0.281181
            scale.y: 0.281181
            scale.z: 0.281181
            source: "meshes/plane_056.mesh"
            y: 2.46034
            z: -0.208578
        }
        Model {
            id: plane_055

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            scale.x: 0.194856
            scale.y: 0.194856
            scale.z: 0.194856
            source: "meshes/plane_055.mesh"
            x: 0.949527
            y: -0.999699
            z: -0.0645038
        }
        Model {
            id: plane_049

            materials: [amg_Word_Black_material]
            source: "meshes/plane_049.mesh"
            y: 3.05525
        }
        Model {
            id: plane_048

            materials: [amg_Word_Black_material]
            source: "meshes/plane_048.mesh"
            y: 3.79074
        }
        Model {
            id: plane_001

            materials: [amg_Word_Black_material]
            source: "meshes/plane_001.mesh"
        }
        Model {
            id: guide_Mesh_Car_001

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_001.mesh"
        }
        Model {
            id: guide_Mesh_Car_004

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_004.mesh"
        }
        Model {
            id: guide_Mesh_Car_005

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_005.mesh"
        }
        Model {
            id: guide_Mesh_Car_002

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_002.mesh"
        }
        Model {
            id: guide_Mesh_Car_007

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_007.mesh"
        }
        Model {
            id: guide_Mesh_Car_006

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_006.mesh"
        }
        Model {
            id: guide_Mesh_Car_010

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_010.mesh"
        }
        Model {
            id: guide_Mesh_Car_011

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_011.mesh"
        }
        Model {
            id: guide_Mesh_Car_013

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_013.mesh"
        }
        Model {
            id: guide_Mesh_Car_012

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_012.mesh"
        }
        Model {
            id: guide_Mesh_Car_022

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_022.mesh"
        }
        Model {
            id: guide_Mesh_Car_020

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_020.mesh"
        }
        Model {
            id: guide_Mesh_Car_027

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_027.mesh"
        }
        Model {
            id: guide_Mesh_Car_028

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_028.mesh"
        }
        Model {
            id: guide_Mesh_Car_030

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_030.mesh"
        }
        Model {
            id: guide_Mesh_Car_031

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_031.mesh"
            y: 0.00655734
        }
        Model {
            id: guide_Mesh_Car_032

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_032.mesh"
            z: -0.0133781
        }
        Model {
            id: guide_Mesh_Car_033

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_033.mesh"
            z: -0.0284385
        }
        Model {
            id: plane_044

            materials: [amg_Word_Black_material]
            source: "meshes/plane_044.mesh"
        }
        Model {
            id: guide_Mesh_Car_034

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_034.mesh"
        }
        Model {
            id: guide_Mesh_Car_040

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_040.mesh"
        }
        Model {
            id: guide_Mesh_Car_041

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_041.mesh"
        }
        Model {
            id: guide_Mesh_Car_044

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_044.mesh"
        }
        Model {
            id: guide_Mesh_Car_048

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_048.mesh"
            z: -0.0169429
        }
        Model {
            id: guide_Mesh_Car_049

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_049.mesh"
        }
        Model {
            id: guide_Mesh_Car_050

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_050.mesh"
        }
        Model {
            id: guide_Mesh_Car_008

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_008.mesh"
        }
        Model {
            id: plane

            materials: [amg_Word_Black_material]
            scale.x: 0.0703705
            scale.y: 0.0515606
            scale.z: 0.0515606
            source: "meshes/plane.mesh"
        }
        Model {
            id: plane_002

            materials: [amg_Word_Black_material]
            scale.x: 0.0648649
            scale.y: 0.0475267
            scale.z: 0.0475267
            source: "meshes/plane_002.mesh"
        }
        Model {
            id: plane_003

            materials: [amg_Word_Black_material]
            scale.x: 0.0500617
            scale.y: 0.0366803
            scale.z: 0.0366803
            source: "meshes/plane_003.mesh"
        }
        Model {
            id: plane_004

            materials: [amg_Word_Black_material]
            scale.x: 0.0468319
            scale.y: 0.0343139
            scale.z: 0.0343139
            source: "meshes/plane_004.mesh"
        }
        Model {
            id: sphere

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: -0.0371652
            scale.y: -0.0371652
            scale.z: -0.0371652
            source: "meshes/sphere.mesh"
        }
        Model {
            id: sphere_001

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: -0.0371652
            scale.y: -0.0371652
            scale.z: -0.0371652
            source: "meshes/sphere_001.mesh"
        }
        Model {
            id: sphere_002

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_002.mesh"
        }
        Model {
            id: sphere_003

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_003.mesh"
        }
        Model {
            id: sphere_004

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_004.mesh"
        }
        Model {
            id: sphere_005

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_005.mesh"
        }
        Model {
            id: sphere_006

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_006.mesh"
        }
        Model {
            id: sphere_007

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_007.mesh"
        }
        Model {
            id: sphere_008

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_008.mesh"
        }
        Model {
            id: sphere_009

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_009.mesh"
        }
        Model {
            id: sphere_010

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_010.mesh"
        }
        Model {
            id: sphere_011

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_011.mesh"
        }
        Model {
            id: sphere_012

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_012.mesh"
        }
        Model {
            id: sphere_013

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_013.mesh"
        }
        Model {
            id: sphere_014

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_014.mesh"
        }
        Model {
            id: sphere_015

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_015.mesh"
        }
        Model {
            id: sphere_016

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_016.mesh"
        }
        Model {
            id: sphere_017

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_017.mesh"
        }
        Model {
            id: sphere_018

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_018.mesh"
        }
        Model {
            id: sphere_019

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_019.mesh"
        }
        Model {
            id: sphere_020

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_020.mesh"
        }
        Model {
            id: sphere_021

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_021.mesh"
        }
        Model {
            id: sphere_022

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_022.mesh"
        }
        Model {
            id: sphere_023

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_023.mesh"
        }
        Model {
            id: sphere_024

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_024.mesh"
        }
        Model {
            id: sphere_025

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_025.mesh"
        }
        Model {
            id: sphere_026

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_026.mesh"
        }
        Model {
            id: sphere_027

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_027.mesh"
        }
        Model {
            id: sphere_028

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_028.mesh"
        }
        Model {
            id: sphere_029

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_029.mesh"
        }
        Model {
            id: sphere_030

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_030.mesh"
        }
        Model {
            id: sphere_031

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_031.mesh"
        }
        Model {
            id: sphere_032

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_032.mesh"
        }
        Model {
            id: sphere_033

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_033.mesh"
        }
        Model {
            id: sphere_034

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_034.mesh"
        }
        Model {
            id: sphere_035

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_035.mesh"
        }
        Model {
            id: sphere_036

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_036.mesh"
        }
        Model {
            id: sphere_037

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_037.mesh"
        }
        Model {
            id: sphere_038

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_038.mesh"
        }
        Model {
            id: sphere_039

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_039.mesh"
        }
        Model {
            id: sphere_040

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_040.mesh"
        }
        Model {
            id: sphere_041

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_041.mesh"
        }
        Model {
            id: sphere_042

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_042.mesh"
        }
        Model {
            id: sphere_043

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_043.mesh"
        }
        Model {
            id: sphere_044

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_044.mesh"
        }
        Model {
            id: sphere_045

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_045.mesh"
        }
        Model {
            id: sphere_046

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_046.mesh"
        }
        Model {
            id: sphere_047

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_047.mesh"
        }
        Model {
            id: sphere_048

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_048.mesh"
        }
        Model {
            id: sphere_049

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_049.mesh"
        }
        Model {
            id: plane_006

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0, 0, 0, 0.5)
            scale.x: 0
            scale.y: 0
            scale.z: 0
            source: "meshes/plane_006.mesh"
        }
        Model {
            id: plane_007

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.0473185
            scale.y: 0.0473185
            scale.z: 0.0473185
            source: "meshes/plane_007.mesh"
        }
        Model {
            id: sphere_050

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.150458
            scale.y: 0.150458
            scale.z: 0.150458
            source: "meshes/sphere_050.mesh"
        }
        Model {
            id: guide_Mesh_Car_014

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_014.mesh"
        }
        Model {
            id: guide_Mesh_Car_015

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_015.mesh"
        }
        Model {
            id: guide_Mesh_Car_016

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_016.mesh"
        }
        Model {
            id: guide_Mesh_Car_017

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_017.mesh"
        }
        Model {
            id: guide_Mesh_Car_018

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_018.mesh"
        }
        Model {
            id: guide_Mesh_Car_019

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_019.mesh"
        }
        Model {
            id: guide_Mesh_Car_021

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_021.mesh"
            y: 0.000438467
        }
        Model {
            id: plane_011

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_011.mesh"
            x: 0.349654
            y: -2.35346
            z: -0.36906
        }
        Model {
            id: plane_012

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_012.mesh"
            x: 0.603038
            y: -2.32762
            z: -0.36906
        }
        Model {
            id: plane_013

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_013.mesh"
            x: 0.0962704
            y: -2.32762
            z: -0.36906
        }
        Model {
            id: plane_014

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_014.mesh"
        }
        Model {
            id: guide_Mesh_Car_025

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_025.mesh"
            y: 0.000438467
        }
        Model {
            id: guide_Mesh_Car_026

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_026.mesh"
        }
        Model {
            id: plane_015

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_015.mesh"
            y: 0.000116825
        }
        Model {
            id: plane_016

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_016.mesh"
        }
        Model {
            id: plane_019

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_019.mesh"
        }
        Model {
            id: plane_020

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_020.mesh"
        }
        Model {
            id: plane_017

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_017.mesh"
        }
        Model {
            id: plane_018

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_018.mesh"
        }
        Model {
            id: plane_021

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_021.mesh"
        }
        Model {
            id: plane_022

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_022.mesh"
        }
        Model {
            id: plane_023

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_023.mesh"
        }
        Model {
            id: plane_024

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_024.mesh"
        }
        Model {
            id: plane_027

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_027.mesh"
        }
        Model {
            id: plane_028

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_028.mesh"
        }
        Model {
            id: plane_029

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_029.mesh"
        }
        Model {
            id: plane_030

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            source: "meshes/plane_030.mesh"
        }
        Model {
            id: plane_025

            materials: [amg_Word_Black_material]
            source: "meshes/plane_025.mesh"
            y: 0.0645715
            z: 0.00639859
        }
        Model {
            id: plane_026

            materials: [amg_Word_Black_material]
            source: "meshes/plane_026.mesh"
            y: 0.0645715
            z: -0.0433682
        }
        Model {
            id: plane_031

            materials: [amg_Word_Black_material]
            source: "meshes/plane_031.mesh"
            y: 0.0645715
            z: -0.0995336
        }
        Model {
            id: plane_032

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.171251
            scale.y: 0.0518315
            scale.z: 0.0518315
            source: "meshes/plane_032.mesh"
            x: -0.00212184
            y: -2.50839
            z: -0.309198
        }
        Model {
            id: plane_033

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.171251
            scale.y: 0.0518315
            scale.z: 0.0518315
            source: "meshes/plane_033.mesh"
            x: -0.00212184
            y: -2.50951
            z: -0.309198
        }
        Model {
            id: plane_034

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.15202e-07, -1.15202e-07, 0.707107, 0.707107)
            scale.x: 0.171251
            scale.y: 0.0518315
            scale.z: 0.0518315
            source: "meshes/plane_034.mesh"
            x: -0.00212184
            y: 2.46026
            z: -0.207229
        }
        Model {
            id: plane_035

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-4.36187e-07, -4.68121e-07, 0.720513, 0.693441)
            scale.x: 0.171251
            scale.y: 0.0518314
            scale.z: 0.0518314
            source: "meshes/plane_035.mesh"
            x: -0.00212184
            y: 2.46307
            z: -0.207229
        }
        Model {
            id: plane_037

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.0294875, 0.0419457, 0.725633, 0.686169)
            scale.x: 0.0523513
            scale.y: 0.0425397
            scale.z: 0.0450417
            source: "meshes/plane_037.mesh"
            x: 0.50368
            y: 2.42206
            z: -0.407277
        }
        Model {
            id: plane_036

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.0294875, 0.0419457, 0.725633, 0.686169)
            scale.x: 0.0523513
            scale.y: 0.0425397
            scale.z: 0.0450417
            source: "meshes/plane_036.mesh"
            x: 0.613518
            y: 2.3857
            z: -0.407277
        }
        Model {
            id: plane_038

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-3.09086e-08, -3.09086e-08, 0.707107, 0.707107)
            scale.x: -0.0735674
            scale.y: -0.0735674
            scale.z: -0.0735674
            source: "meshes/plane_038.mesh"
        }
        Model {
            id: plane_039

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-3.09086e-08, -3.09086e-08, 0.707107, 0.707107)
            scale.x: 0.0576072
            scale.y: 0.0576072
            scale.z: 0.0576072
            source: "meshes/plane_039.mesh"
            x: -0.00342867
        }
        Model {
            id: plane_040

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-3.09086e-08, -3.09086e-08, 0.707107, 0.707107)
            scale.x: 0.0576072
            scale.y: 0.0576072
            scale.z: 0.0576072
            source: "meshes/plane_040.mesh"
            x: -0.00377153
        }
        Model {
            id: plane_041

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-3.09086e-08, -3.09086e-08, 0.707107, 0.707107)
            scale.x: -0.0663837
            scale.y: -0.0663837
            scale.z: -0.0663837
            source: "meshes/plane_041.mesh"
            x: -0.00204702
            y: 2.39833
            z: -0.400877
        }
        Model {
            id: plane_042

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-3.09086e-08, -3.09086e-08, 0.707107, 0.707107)
            scale.x: -0.0663837
            scale.y: -0.0663837
            scale.z: -0.0663837
            source: "meshes/plane_042.mesh"
            x: 0.194891
            y: 2.39213
            z: -0.400877
        }
        Model {
            id: plane_043

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-3.09086e-08, -3.09086e-08, 0.707107, 0.707107)
            scale.x: -0.0663837
            scale.y: -0.0663837
            scale.z: -0.0663837
            source: "meshes/plane_043.mesh"
            x: -0.206095
            y: 2.39062
            z: -0.400877
        }
        Model {
            id: guide_Mesh_Car_039

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_039.mesh"
        }
        Model {
            id: guide_Mesh_Car_042

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_042.mesh"
        }
        Model {
            id: guide_Mesh_Car_045

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_045.mesh"
        }
        Model {
            id: guide_Mesh_Car_036

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_036.mesh"
        }
        Model {
            id: guide_Mesh_Car_043

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_043.mesh"
            y: 0.00432512
            z: -0.000257575
        }
        Model {
            id: circle

            materials: [amg_Word_Black_material]
            source: "meshes/circle.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_001

            materials: [amg_Word_Black_material]
            source: "meshes/circle_001.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_002

            materials: [amg_Word_Black_material]
            source: "meshes/circle_002.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_003

            materials: [amg_Word_Black_material]
            source: "meshes/circle_003.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_004

            materials: [amg_Word_Black_material]
            source: "meshes/circle_004.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_005

            materials: [amg_Word_Black_material]
            source: "meshes/circle_005.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_006

            materials: [amg_Word_Black_material]
            source: "meshes/circle_006.mesh"
            x: 0.00478818
        }
        Model {
            id: plane_045

            materials: [amg_Word_Black_material]
            source: "meshes/plane_045.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_007

            materials: [amg_Word_Black_material]
            source: "meshes/circle_007.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_008

            materials: [amg_Word_Black_material]
            source: "meshes/circle_008.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_010

            materials: [amg_Word_Black_material]
            source: "meshes/circle_010.mesh"
            x: 0.00478818
        }
        Model {
            id: plane_047

            materials: [amg_Word_Black_material]
            source: "meshes/plane_047.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_009

            materials: [amg_Word_Black_material]
            source: "meshes/circle_009.mesh"
            x: 0.00478818
        }
        Model {
            id: circle_011

            materials: [amg_Word_Black_material]
            scale.x: 0.0169731
            scale.y: 0.0169731
            scale.z: 0.0169731
            source: "meshes/circle_011.mesh"
        }
        Model {
            id: plane_051

            materials: [amg_Word_Black_material]
            source: "meshes/plane_051.mesh"
        }
        Model {
            id: plane_052

            materials: [amg_Word_Black_material]
            source: "meshes/plane_052.mesh"
        }
        Model {
            id: plane_053

            materials: [amg_Word_Black_material]
            source: "meshes/plane_053.mesh"
        }
        Model {
            id: plane_054

            materials: [amg_Word_Black_material]
            source: "meshes/plane_054.mesh"
        }
        Model {
            id: plane_057

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.707107, 0.707107, 2.30405e-07, 2.30405e-07)
            scale.x: 0.281181
            scale.y: 0.281181
            scale.z: 0.281181
            source: "meshes/plane_057.mesh"
            y: -2.50628
            z: -0.313504
        }
        Model {
            id: plane_060

            materials: [amg_Word_Black_material]
            source: "meshes/plane_060.mesh"
            z: -0.00606733
        }
        Model {
            id: guide_Mesh_Car_047

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_047.mesh"
        }
        Model {
            id: plane_061

            materials: [amg_Word_Black_material]
            source: "meshes/plane_061.mesh"
            x: -0.483627
            y: 2.51616
            z: -0.256395
        }
        Model {
            id: plane_062

            materials: [amg_Word_Black_material]
            source: "meshes/plane_062.mesh"
            x: -0.483627
            y: 2.51616
            z: -0.256395
        }
        Model {
            id: plane_063

            materials: [amg_Word_Black_material]
            source: "meshes/plane_063.mesh"
            x: -0.483627
            y: 2.51616
            z: -0.256395
        }
        Model {
            id: plane_064

            materials: [amg_Word_Black_material]
            source: "meshes/plane_064.mesh"
            x: -0.34299
            y: 2.35282
            z: -0.185277
        }
        Model {
            id: plane_065

            materials: [amg_Word_Black_material]
            source: "meshes/plane_065.mesh"
            x: -1.35377
            y: 2.35282
            z: -0.185277
        }
        Model {
            id: plane_066

            materials: [amg_Word_Black_material]
            source: "meshes/plane_066.mesh"
            x: -1.35377
            y: 3.08868
            z: -0.254912
        }
        Model {
            id: plane_067

            materials: [amg_Word_Black_material]
            source: "meshes/plane_067.mesh"
            x: -0.854827
            y: 3.08868
            z: -0.254912
        }
        Model {
            id: plane_068

            materials: [amg_Word_Black_material]
            source: "meshes/plane_068.mesh"
            x: -0.339966
            y: 3.08868
            z: -0.254912
        }
        Model {
            id: plane_069

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-4.37114e-08, 1, 0, 0)
            scale.x: 0.873325
            source: "meshes/plane_069.mesh"
            x: 0.0184741
            y: -0.0433141
            z: -0.529666
        }
        Model {
            id: guide_Mesh_Car_003

            materials: [amg_Word_Black_material]
            source: "meshes/guide_Mesh_Car_003.mesh"
        }
        Model {
            id: torus

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(0.00534636, 0.00332564, 0.528207, 0.849092)
            scale.x: 1.12061
            scale.y: 1.12061
            scale.z: 1.12061
            source: "meshes/torus.mesh"
            x: 0.507698
            y: -0.409435
            z: 0.309743
        }
        Model {
            id: circle_012

            materials: [amg_Word_Black_material]
            source: "meshes/circle_012.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: plane_009

            materials: [amg_Word_Black_material]
            source: "meshes/plane_009.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_015

            materials: [amg_Word_Black_material]
            source: "meshes/circle_015.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_013

            materials: [amg_Word_Black_material]
            source: "meshes/circle_013.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_014

            materials: [amg_Word_Black_material]
            source: "meshes/circle_014.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: plane_070

            materials: [amg_Word_Black_material]
            source: "meshes/plane_070.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_016

            materials: [amg_Word_Black_material]
            source: "meshes/circle_016.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_017

            materials: [amg_Word_Black_material]
            source: "meshes/circle_017.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_018

            materials: [amg_Word_Black_material]
            source: "meshes/circle_018.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_019

            materials: [amg_Word_Black_material]
            source: "meshes/circle_019.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_020

            materials: [amg_Word_Black_material]
            source: "meshes/circle_020.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_021

            materials: [amg_Word_Black_material]
            source: "meshes/circle_021.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: circle_022

            materials: [amg_Word_Black_material]
            source: "meshes/circle_022.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: plane_071

            materials: [amg_Word_Black_material]
            source: "meshes/plane_071.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: plane_072

            materials: [amg_Word_Black_material]
            source: "meshes/plane_072.mesh"
            x: 0.00478818
            y: 2.96446
        }
        Model {
            id: plane_073

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_073.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: plane_074

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_074.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_023

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_023.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_024

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_024.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_025

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_025.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_026

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_026.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_027

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_027.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_028

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_028.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_029

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_029.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: plane_075

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_075.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_030

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_030.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_032

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_032.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_031

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_031.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: plane_077

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_077.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_033

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_033.mesh"
            x: 0.00574607
            y: -3.09482
        }
        Model {
            id: circle_034

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_034.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: plane_078

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_078.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_037

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_037.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_035

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_035.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_036

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_036.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: plane_080

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_080.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_038

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_038.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_039

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_039.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_040

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_040.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_041

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_041.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_042

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_042.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_043

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_043.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_044

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/circle_044.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: plane_081

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_081.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: plane_082

            materials: [amg_Word_Black_material]
            rotation: Qt.quaternion(-1.62921e-07, 0, 0, 1)
            source: "meshes/plane_082.mesh"
            x: 0.00574581
            y: -0.130362
        }
        Model {
            id: circle_046

            materials: [amg_Word_Black_material]
            source: "meshes/circle_046.mesh"
            y: -4.06832
        }
        Model {
            id: plane_083

            materials: [amg_Word_Black_material]
            source: "meshes/plane_083.mesh"
            x: -0.00472774
            y: -2.51108
            z: -0.165027
        }
    }
}
