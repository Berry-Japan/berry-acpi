%define name berry-acpi
%define version 0.01
%define release b1

Name:		%{name}
Summary:	Acpi events for Berry Linux
Version:	%{version}
Release:	%{release}
Copyright:	GPL
Group:		System/Tools
Source:		%{name}-%{version}.tar.bz2
Buildroot:	%{_tmppath}/%{name}-%{version}

BuildArchitectures: noarch


%description
Acpi events for Berry Linux.
For use softwear suspend.


##
## Setup Section
##

%prep
%setup -q


##
## Build Section
##

%build


##
## Install Section
##

%install
mkdir -p %{buildroot}/etc/acpi/{actions,events}
install -m 755 *.sh %{buildroot}/etc/acpi/actions/
install -m 644 *.conf %{buildroot}/etc/acpi/events/


##
## Clean Section
##

%clean
[ -n "%{buildroot}" -a "%{buildroot}" != / ] && rm -rf %{buildroot}
rm -rf $RPM_BUILD_DIR/%{name}-%{version}


##
## Files Section
##

%files
%defattr (-,root,root)
/etc/acpi/actions/*
/etc/acpi/events/*


##
## change log
##

%changelog
* Sun Aug 8 2004 Yuichiro Nakada <berry@po.yui.mine.nu>
- Create for Berry Linux
