-- Site Explorer records the Redfish interface identity with each discovered
-- NVOS MAC. The existing nvos_mac_addresses column remains the compatibility
-- projection used by legacy API and DHCP paths.
ALTER TABLE expected_switches
    ADD COLUMN nvos_interfaces jsonb NOT NULL DEFAULT '{}'::jsonb;
