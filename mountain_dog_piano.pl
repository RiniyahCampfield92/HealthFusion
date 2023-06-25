#!/usr/bin/perl

# File name: healthcare_provider.pl

use strict;
use warnings;

# declare variables
my $providerName = "Integrative Care";
my $serviceDescription = "A healthcare provider that uses integrative medicine to help patients achieve optimal health and well-being";
my $healthCategories;
my %services;

# create array of health categories
$healthCategories = ["Mental Health", 
                     "Physical Health", 
                     "Preventative Medicine", 
                     "Chronic Disease Management", 
                     "Nutrition and Diet", 
                     "Complementary Medicine", 
                     "Holistic Medicine"];

# create associative array of services
%services = (
    "Mental Health" => "counseling, cognitive therapy, mindfulness techniques, stress management",
    "Physical Health" => "chiropractic, acupuncture, massage therapy, physical rehab",
    "Preventative Medicine" => "annual exams, immunizations, screenings, wellness programs",
    "Chronic Disease Management" => "symptom management, lifestyle changes, medications, alternative therapies",
    "Nutrition and Diet" => "meal plans, diet advice, nutritional supplements, food sensitivity tests",
    "Complementary Medicine" => "herbal remedies, aromatherapy, energy healing, meditation",
    "Holistic Medicine" => "mind-body connection, lifestyle changes, spiritual guidance"
);

# print provider name and service description
print "Provider Name: $providerName\n";
print "Service Description: $serviceDescription\n";

# loop through health categories and print each one with associated services
foreach my $category (@$healthCategories) {
    print "Health Category: $category\n";
    print "Services: " . $services{$category} . "\n\n";
}