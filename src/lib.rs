pub mod v1 {
    include!(concat!(env!("OUT_DIR"), "/roeh.sensor.v1.rs"));
}

pub use v1::*;
