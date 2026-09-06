pub mod v1 {
    include!(concat!(env!("OUT_DIR"), "/invisible_illness.sensor.v1.rs"));
}

pub use v1::*;
